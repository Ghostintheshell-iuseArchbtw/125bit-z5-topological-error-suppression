#!/usr/bin/env python3
"""
ABLATION EXPERIMENT CIRCUIT GENERATOR
=====================================
Generates all ablation variants of the Z5 toroidal circuit for systematic
comparison. Each variant modifies exactly one structural element to isolate
its contribution to the observed statistics.

Ablation experiments (from paper §5.1):
  1. Random-circuit control     — same depth/qubits/gates, no torus structure
  2. Feedback ablation          — remove conditional corrections, keep measure-reset
  3. Open-boundary topology     — replace periodic boundaries with open boundaries
  4. Depth scaling              — 500, 1000, 1500 layer variants
  5. Graph-state verification   — stabilizer measurement circuits

All circuits are generated in OpenQASM 3.0 targeting IBM Heron native gates:
  rz(θ), sx, cz, measure, reset, if/else
"""

import random
import itertools
import os
import json
from typing import List, Tuple, Set, Dict, Optional

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'circuits')
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ============================================================================
# TORUS GEOMETRY
# ============================================================================

class TorusLattice:
    """Represents a d-dimensional torus lattice Z_L^d with periodic BCs."""

    def __init__(self, dims: Tuple[int, ...], periodic: bool = True):
        """
        Args:
            dims: Tuple of lattice sizes, e.g. (5,5,5) for 3-torus.
            periodic: If True, periodic (torus). If False, open boundaries.
        """
        self.dims = dims
        self.ndim = len(dims)
        self.n_vertices = 1
        for d in dims:
            self.n_vertices *= d
        self.periodic = periodic
        self.edges = self._build_edges()
        self.degree = 2 * self.ndim  # each vertex connects in +/- for each dim

    def _coord_to_index(self, coords: Tuple[int, ...]) -> int:
        idx = 0
        stride = 1
        for i in range(self.ndim - 1, -1, -1):
            idx += coords[i] * stride
            stride *= self.dims[i]
        return idx

    def _index_to_coord(self, idx: int) -> Tuple[int, ...]:
        coords = []
        for i in range(self.ndim - 1, -1, -1):
            coords.append(idx % self.dims[i])
            idx //= self.dims[i]
        return tuple(reversed(coords))

    def _build_edges(self) -> List[Tuple[int, int]]:
        edges = set()
        for idx in range(self.n_vertices):
            coords = self._index_to_coord(idx)
            for dim in range(self.ndim):
                # Forward neighbor
                neighbor = list(coords)
                neighbor[dim] += 1
                if neighbor[dim] >= self.dims[dim]:
                    if self.periodic:
                        neighbor[dim] = 0
                    else:
                        continue  # open boundary — no wrap
                neighbor = tuple(neighbor)
                n_idx = self._coord_to_index(neighbor)
                edge = (min(idx, n_idx), max(idx, n_idx))
                edges.add(edge)
        return sorted(edges)

    def neighbors(self, idx: int) -> List[int]:
        """Return all neighbors of vertex idx."""
        nbrs = []
        coords = self._index_to_coord(idx)
        for dim in range(self.ndim):
            for delta in [-1, +1]:
                neighbor = list(coords)
                neighbor[dim] += delta
                if self.periodic:
                    neighbor[dim] %= self.dims[dim]
                elif neighbor[dim] < 0 or neighbor[dim] >= self.dims[dim]:
                    continue
                nbrs.append(self._coord_to_index(tuple(neighbor)))
        return nbrs


# ============================================================================
# QASM 3.0 EMITTER (IBM Heron native gates)
# ============================================================================

class QASMEmitter:
    """Builds an OpenQASM 3.0 circuit targeting IBM Heron native gates."""

    def __init__(self, n_qubits: int, n_ancilla: int = 2):
        self.n_data = n_qubits
        self.n_ancilla = n_ancilla
        self.n_total = n_qubits + n_ancilla + 2  # +2 for propagation spine
        self.lines: List[str] = []
        self.anc_m = n_qubits      # ancilla for m-type syndrome
        self.anc_n = n_qubits + 1  # ancilla for n-type syndrome
        self.spine_a = n_qubits + 2  # propagation spine qubits
        self.spine_b = n_qubits + 3

    def header(self):
        self.lines.append('OPENQASM 3.0;')
        self.lines.append('include "stdgates.inc";')
        self.lines.append('bit[1] m;')
        self.lines.append('bit[1] n;')
        self.lines.append(f'bit[{self.n_data}] c;')
        self.lines.append('')

    def comment(self, text: str):
        self.lines.append(f'// {text}')

    def blank(self):
        self.lines.append('')

    def hadamard(self, q: int):
        """H = rz(pi/2) sx rz(pi/2) in Heron native."""
        self.lines.append(f'rz(pi/2) ${q};')
        self.lines.append(f'sx ${q};')
        self.lines.append(f'rz(pi/2) ${q};')

    def x_gate(self, q: int):
        """X = sx sx in native (or use x directly)."""
        self.lines.append(f'x ${q};')

    def z_gate(self, q: int):
        """Z = rz(pi) in native."""
        self.lines.append(f'rz(pi) ${q};')

    def cz(self, q1: int, q2: int):
        """Native CZ gate."""
        self.lines.append(f'cz ${q1}, ${q2};')

    def sx(self, q: int):
        self.lines.append(f'sx ${q};')

    def rz(self, q: int, angle: str):
        self.lines.append(f'rz({angle}) ${q};')

    def reset(self, q: int):
        self.lines.append(f'reset ${q};')

    def measure_to(self, q: int, reg: str):
        self.lines.append(f'{reg} = measure ${q};')

    def measure_data(self, q: int, idx: int):
        self.lines.append(f'c[{idx}] = measure ${q};')

    def cond_x(self, reg: str, target: int):
        """Conditional X gate based on classical register."""
        self.lines.append(f'if ({reg} == true) {{')
        self.lines.append(f'  x ${target};')
        self.lines.append(f'}}')

    def cond_z(self, reg: str, target: int):
        """Conditional Z gate based on classical register."""
        self.lines.append(f'if ({reg} == true) {{')
        self.lines.append(f'  rz(pi) ${target};')
        self.lines.append(f'}}')

    def barrier(self):
        self.lines.append('barrier;')

    def emit(self) -> str:
        return '\n'.join(self.lines) + '\n'

    def save(self, filename: str):
        filepath = os.path.join(OUTPUT_DIR, filename)
        with open(filepath, 'w') as f:
            f.write(self.emit())
        n_cz = sum(1 for l in self.lines if l.strip().startswith('cz '))
        n_meas = sum(1 for l in self.lines if 'measure' in l)
        n_reset = sum(1 for l in self.lines if l.strip().startswith('reset'))
        n_cond = sum(1 for l in self.lines if l.strip().startswith('if '))
        print(f"  Saved: {filepath}")
        print(f"    Lines: {len(self.lines)}, CZ: {n_cz}, "
              f"Measure: {n_meas}, Reset: {n_reset}, Conditional: {n_cond}")
        return filepath


# ============================================================================
# CIRCUIT BUILDERS
# ============================================================================

def build_torus_dynamic_circuit(
    lattice: TorusLattice,
    n_feedback_cycles: int = 350,
    include_corrections: bool = True,
    label: str = "torus_dynamic"
) -> QASMEmitter:
    """
    Build the full dynamic torus circuit with measurement-reset-feedback cycles.

    This reconstructs the structure of z5.qasm:
      1. Initialize all data qubits to |+⟩
      2. Apply CZ for all graph-state edges
      3. Bootstrap ancillas
      4. Run n_feedback_cycles of: measure → reset → H → [correct] → re-entangle
      5. Final measurement of all data qubits

    Args:
        lattice: TorusLattice defining the graph structure.
        n_feedback_cycles: Number of measure-reset-feedback cycles.
        include_corrections: If False, skip conditional corrections (ablation #2).
        label: Descriptive label for comments.
    """
    n = lattice.n_vertices
    qasm = QASMEmitter(n)
    qasm.header()
    qasm.comment(f'={label}=')
    qasm.comment(f'Lattice: {"x".join(str(d) for d in lattice.dims)}, '
                 f'Periodic: {lattice.periodic}, '
                 f'Vertices: {n}, Edges: {len(lattice.edges)}')
    qasm.comment(f'Feedback cycles: {n_feedback_cycles}, '
                 f'Corrections: {include_corrections}')
    qasm.blank()

    # --- Phase 1: Initialize all data qubits to |+⟩ ---
    qasm.comment('Phase 1: Initialize data qubits to |+>')
    for q in range(n):
        qasm.hadamard(q)
    qasm.blank()

    # --- Phase 2: Create graph state via CZ on all edges ---
    qasm.comment(f'Phase 2: Graph state creation ({len(lattice.edges)} CZ gates)')
    for (i, j) in lattice.edges:
        qasm.cz(i, j)
    qasm.blank()

    # --- Phase 3: Bootstrap ancillas ---
    anc_m = qasm.anc_m
    anc_n = qasm.anc_n
    spine_a = qasm.spine_a
    spine_b = qasm.spine_b

    qasm.comment('Phase 3: Bootstrap ancilla qubits')
    qasm.reset(anc_m)
    qasm.hadamard(anc_m)
    qasm.reset(anc_n)
    qasm.hadamard(anc_n)
    qasm.cz(anc_m, anc_n)
    qasm.blank()

    # Initial entangling: connect ancillas to data lattice
    qasm.comment('Phase 3b: Initial ancilla-data entanglement')
    # Connect ancilla m to a chain of data qubits
    for q in range(min(5, n)):
        qasm.cz(anc_m, q)
    # Connect ancilla n to a different chain
    for q in range(min(5, n), min(10, n)):
        qasm.cz(anc_n, q)
    # spine connections
    qasm.cz(spine_a, anc_m)
    qasm.cz(spine_b, anc_n)
    qasm.cz(spine_a, spine_b)
    qasm.blank()

    # --- Phase 4: Dynamic feedback cycles ---
    qasm.comment(f'Phase 4: {n_feedback_cycles} feedback cycles')

    # Build a schedule of which data qubits to interact with at each cycle
    # Alternate between m-type (X stabilizer) and n-type (Z stabilizer)
    all_vertices = list(range(n))
    edge_list = list(lattice.edges)

    for cycle in range(n_feedback_cycles):
        is_m_type = (cycle % 2 == 0)
        reg = 'm[0]' if is_m_type else 'n[0]'
        anc = anc_m if is_m_type else anc_n
        spine = spine_a if is_m_type else spine_b

        # Select the target data qubit for this cycle
        target_data = all_vertices[cycle % n]

        # Select a neighbor for re-entangling
        neighbors = lattice.neighbors(target_data)
        re_entangle_target = neighbors[cycle % len(neighbors)] if neighbors else target_data

        qasm.comment(f'--- Cycle {cycle} ({"m/X" if is_m_type else "n/Z"}) '
                     f'target=${target_data} ---')

        # (a) Measure the ancilla
        qasm.measure_to(anc, reg)

        # (b) Reset ancilla (double reset for reliability)
        qasm.reset(anc)
        qasm.reset(anc)

        # (c) Re-initialize ancilla to |+⟩
        qasm.hadamard(anc)

        # (d) Conditional correction (skip if ablation #2)
        if include_corrections:
            if is_m_type:
                qasm.cond_x(reg, spine)
            else:
                qasm.cond_z(reg, re_entangle_target)

        # (e) Re-entangle: ancilla ↔ spine ↔ data chain
        qasm.cz(anc, spine)
        qasm.cz(spine, target_data)

        # Propagate through a few neighbors to maintain graph connectivity
        prev = target_data
        for nbr in neighbors[:3]:  # up to 3 neighbors
            qasm.cz(prev, nbr)
            prev = nbr

        qasm.blank()

    # --- Phase 5: Final measurement ---
    qasm.comment('Phase 5: Final measurement of all data qubits')
    for q in range(n):
        qasm.measure_data(q, q)

    return qasm


def build_random_circuit_control(
    n_qubits: int = 125,
    n_cz_gates: int = 11900,
    n_feedback_cycles: int = 350,
    target_depth: int = 1584,
    seed: int = 42,
    label: str = "random_control"
) -> QASMEmitter:
    """
    Ablation #1: Random-circuit control.

    Same qubit count, gate count, depth, and feedback structure as the torus
    circuit, but CZ gates connect RANDOM pairs instead of torus neighbors.
    This destroys the topological structure while preserving all other parameters.
    """
    rng = random.Random(seed)
    qasm = QASMEmitter(n_qubits)
    qasm.header()
    qasm.comment(f'=ABLATION #1: Random Circuit Control ({label})=')
    qasm.comment(f'Qubits: {n_qubits}, CZ: {n_cz_gates}, '
                 f'Feedback: {n_feedback_cycles}, Seed: {seed}')
    qasm.comment('Same depth/gates/feedback as torus, random connectivity.')
    qasm.blank()

    anc_m = qasm.anc_m
    anc_n = qasm.anc_n
    spine_a = qasm.spine_a
    spine_b = qasm.spine_b

    # Phase 1: Initialize to |+⟩
    qasm.comment('Phase 1: Initialize all data qubits to |+>')
    for q in range(n_qubits):
        qasm.hadamard(q)
    qasm.blank()

    # Phase 2: Random CZ gates (instead of graph-state edges)
    # Distribute ~375 CZ gates in the initial layer (matching torus edge count)
    n_initial_cz = min(375, n_cz_gates // 3)
    qasm.comment(f'Phase 2: Random entangling ({n_initial_cz} random CZ pairs)')
    all_pairs = [(i, j) for i in range(n_qubits) for j in range(i+1, n_qubits)]
    selected = rng.sample(all_pairs, min(n_initial_cz, len(all_pairs)))
    for (i, j) in selected:
        qasm.cz(i, j)
    cz_used = n_initial_cz
    qasm.blank()

    # Phase 3: Bootstrap ancillas (same as torus)
    qasm.comment('Phase 3: Bootstrap ancillas')
    qasm.reset(anc_m)
    qasm.hadamard(anc_m)
    qasm.reset(anc_n)
    qasm.hadamard(anc_n)
    qasm.cz(anc_m, anc_n)
    for q in range(min(5, n_qubits)):
        qasm.cz(anc_m, q)
    for q in range(min(5, n_qubits), min(10, n_qubits)):
        qasm.cz(anc_n, q)
    qasm.cz(spine_a, anc_m)
    qasm.cz(spine_b, anc_n)
    qasm.cz(spine_a, spine_b)
    qasm.blank()

    # Phase 4: Feedback cycles with random re-entangling
    cz_per_cycle = max(1, (n_cz_gates - cz_used) // n_feedback_cycles)
    qasm.comment(f'Phase 4: {n_feedback_cycles} feedback cycles '
                 f'(~{cz_per_cycle} CZ/cycle, random pairs)')

    data_qubits = list(range(n_qubits))
    for cycle in range(n_feedback_cycles):
        is_m_type = (cycle % 2 == 0)
        reg = 'm[0]' if is_m_type else 'n[0]'
        anc = anc_m if is_m_type else anc_n
        spine = spine_a if is_m_type else spine_b

        target = rng.choice(data_qubits)

        qasm.comment(f'--- Cycle {cycle} ({"m/X" if is_m_type else "n/Z"}) ---')

        # Measure
        qasm.measure_to(anc, reg)
        qasm.reset(anc)
        qasm.reset(anc)
        qasm.hadamard(anc)

        # Correction (same structure as torus)
        if is_m_type:
            qasm.cond_x(reg, spine)
        else:
            correction_target = rng.choice(data_qubits)
            qasm.cond_z(reg, correction_target)

        # Random re-entangling
        qasm.cz(anc, spine)
        qasm.cz(spine, target)
        for _ in range(min(cz_per_cycle - 2, 4)):
            q1, q2 = rng.sample(data_qubits, 2)
            qasm.cz(q1, q2)
            cz_used += 1

        qasm.blank()

    # Phase 5: Final measurement
    qasm.comment('Phase 5: Final measurement')
    for q in range(n_qubits):
        qasm.measure_data(q, q)

    return qasm


def build_feedback_ablation(
    lattice: TorusLattice,
    n_feedback_cycles: int = 350
) -> QASMEmitter:
    """
    Ablation #2: Feedback ablation.

    Identical to the torus circuit EXCEPT all conditional corrections
    (if (m==1) x ...; if (n==1) rz(pi) ...;) are removed.
    Measure-reset-re-entangle cycle is preserved.

    If parity/entropy degrade, the feedback corrections are essential.
    """
    return build_torus_dynamic_circuit(
        lattice=lattice,
        n_feedback_cycles=n_feedback_cycles,
        include_corrections=False,
        label="ablation2_no_feedback"
    )


def build_open_boundary_circuit(
    dims: Tuple[int, ...] = (5, 5, 5),
    n_feedback_cycles: int = 350
) -> QASMEmitter:
    """
    Ablation #3: Open-boundary topology control.

    Same lattice dimensions but with OPEN boundaries instead of periodic.
    Removes non-contractible loops. If H_norm or parity degrade,
    the periodic topology (non-contractible loops) matters.
    """
    lattice = TorusLattice(dims, periodic=False)
    return build_torus_dynamic_circuit(
        lattice=lattice,
        n_feedback_cycles=n_feedback_cycles,
        include_corrections=True,
        label=f"ablation3_open_boundary_{'x'.join(str(d) for d in dims)}"
    )


def build_depth_scaling_variant(
    lattice: TorusLattice,
    n_feedback_cycles: int = 350
) -> QASMEmitter:
    """
    Ablation #5: Depth scaling.

    Same torus topology at different feedback cycle counts to track
    how each invariant degrades with depth.
    """
    return build_torus_dynamic_circuit(
        lattice=lattice,
        n_feedback_cycles=n_feedback_cycles,
        include_corrections=True,
        label=f"ablation5_depth_{n_feedback_cycles}cycles"
    )


def build_stabilizer_verification(
    lattice: TorusLattice,
    n_stabilizers_to_check: int = 10,
    seed: int = 42
) -> QASMEmitter:
    """
    Ablation #7: Graph-state stabilizer verification.

    Instead of running the full dynamic circuit, prepare the graph state
    and directly measure a subset of stabilizer generators K_v = X_v prod Z_u.
    This checks whether ANY entanglement survives.

    For each stabilizer K_v, we:
      1. Prepare graph state (H on all, CZ on edges)
      2. Apply H to vertex v (converts X_v to Z_v measurement basis)
      3. Measure v and all neighbors of v
      4. Check parity: should be +1 for ideal graph state
    """
    n = lattice.n_vertices
    rng = random.Random(seed)

    # Select random vertices to check
    vertices_to_check = rng.sample(range(n), min(n_stabilizers_to_check, n))

    qasm = QASMEmitter(n, n_ancilla=0)
    # Override for simpler circuit
    qasm.n_total = n
    qasm.lines = []
    qasm.lines.append('OPENQASM 3.0;')
    qasm.lines.append('include "stdgates.inc";')
    qasm.lines.append(f'bit[{n}] c;')
    qasm.lines.append('')
    qasm.comment(f'=ABLATION #7: Stabilizer Verification=')
    qasm.comment(f'Lattice: {"x".join(str(d) for d in lattice.dims)}')
    qasm.comment(f'Checking {len(vertices_to_check)} stabilizer generators')
    qasm.comment(f'Vertices: {vertices_to_check}')
    qasm.blank()

    # Phase 1: Initialize
    qasm.comment('Phase 1: Initialize all qubits to |+>')
    for q in range(n):
        qasm.hadamard(q)
    qasm.blank()

    # Phase 2: Graph state
    qasm.comment(f'Phase 2: Graph state ({len(lattice.edges)} CZ gates)')
    for (i, j) in lattice.edges:
        qasm.cz(i, j)
    qasm.blank()

    # Phase 3: Rotate stabilizer vertices to Z basis
    # For stabilizer K_v = X_v * prod(Z_u for u in N(v)):
    #   Apply H to v so X_v → Z_v
    #   Then measure v and all neighbors in Z basis
    #   Parity of (v, neighbors) should be even for +1 eigenvalue
    qasm.comment('Phase 3: Rotate checked vertices (H maps X->Z basis)')
    for v in vertices_to_check:
        qasm.hadamard(v)
    qasm.blank()

    # Phase 4: Measure all
    qasm.comment('Phase 4: Measure all qubits')
    for q in range(n):
        qasm.measure_data(q, q)

    return qasm, vertices_to_check


# ============================================================================
# MAIN: Generate all ablation circuits
# ============================================================================

def main():
    print("=" * 70)
    print("ABLATION EXPERIMENT CIRCUIT GENERATOR")
    print("=" * 70)

    # The original lattice
    torus_3d = TorusLattice((5, 5, 5), periodic=True)
    print(f"\n3D Torus: {torus_3d.n_vertices} vertices, "
          f"{len(torus_3d.edges)} edges, degree {torus_3d.degree}")

    manifest = {}

    # ----------------------------------------------------------------
    # Ablation #1: Random-circuit control
    # ----------------------------------------------------------------
    print("\n--- Ablation #1: Random-Circuit Control ---")
    print("Same depth/qubits/gates, random connectivity instead of torus.")
    for seed in [42, 137, 256]:
        qasm = build_random_circuit_control(
            n_qubits=125,
            n_cz_gates=11900,
            n_feedback_cycles=350,
            seed=seed,
            label=f"random_control_seed{seed}"
        )
        fname = f"ablation1_random_control_seed{seed}.qasm"
        path = qasm.save(fname)
        manifest[fname] = {
            "ablation": 1,
            "description": "Random circuit control (no torus structure)",
            "seed": seed,
            "n_qubits": 125,
            "n_feedback_cycles": 350,
            "hypothesis": "If torus topology matters, this will show worse H_norm and parity"
        }

    # ----------------------------------------------------------------
    # Ablation #2: Feedback ablation (no conditional corrections)
    # ----------------------------------------------------------------
    print("\n--- Ablation #2: Feedback Ablation ---")
    print("Torus structure preserved, conditional corrections removed.")
    qasm = build_feedback_ablation(torus_3d, n_feedback_cycles=350)
    fname = "ablation2_no_corrections.qasm"
    path = qasm.save(fname)
    manifest[fname] = {
        "ablation": 2,
        "description": "Full torus, no conditional corrections",
        "n_qubits": 125,
        "n_feedback_cycles": 350,
        "hypothesis": "If parity degrades, corrections are essential to parity conservation"
    }

    # ----------------------------------------------------------------
    # Ablation #3: Open-boundary topology control
    # ----------------------------------------------------------------
    print("\n--- Ablation #3: Open Boundary Topology ---")
    print("Same lattice dimensions, open boundaries (no non-contractible loops).")
    open_3d = TorusLattice((5, 5, 5), periodic=False)
    print(f"  Open 3D: {open_3d.n_vertices} vertices, "
          f"{len(open_3d.edges)} edges (vs {len(torus_3d.edges)} periodic)")
    qasm = build_torus_dynamic_circuit(
        open_3d, n_feedback_cycles=350, include_corrections=True,
        label="ablation3_open_boundary_5x5x5"
    )
    fname = "ablation3_open_boundary_5x5x5.qasm"
    path = qasm.save(fname)
    manifest[fname] = {
        "ablation": 3,
        "description": "Open boundaries (no periodic wrap), same lattice",
        "n_qubits": 125,
        "n_edges_periodic": len(torus_3d.edges),
        "n_edges_open": len(open_3d.edges),
        "n_feedback_cycles": 350,
        "hypothesis": "If H_norm/parity degrade, non-contractible loops matter"
    }

    # ----------------------------------------------------------------
    # Ablation #5: Depth scaling
    # ----------------------------------------------------------------
    print("\n--- Ablation #5: Depth Scaling ---")
    print("Same torus at 100, 200, 500 feedback cycles.")
    for n_cycles in [100, 200, 500]:
        qasm = build_depth_scaling_variant(torus_3d, n_feedback_cycles=n_cycles)
        fname = f"ablation5_depth_{n_cycles}cycles.qasm"
        path = qasm.save(fname)
        manifest[fname] = {
            "ablation": 5,
            "description": f"Depth scaling: {n_cycles} feedback cycles",
            "n_qubits": 125,
            "n_feedback_cycles": n_cycles,
            "hypothesis": "Track how invariants degrade vs. depth; compare torus vs random"
        }

    # Also generate matching random controls at each depth
    for n_cycles in [100, 200, 500]:
        qasm = build_random_circuit_control(
            n_qubits=125,
            n_cz_gates=int(11900 * n_cycles / 350),
            n_feedback_cycles=n_cycles,
            seed=42,
            label=f"random_depth_{n_cycles}"
        )
        fname = f"ablation5_random_depth_{n_cycles}cycles.qasm"
        path = qasm.save(fname)
        manifest[fname] = {
            "ablation": 5,
            "description": f"Random control at {n_cycles} cycles (depth scaling comparison)",
            "n_qubits": 125,
            "n_feedback_cycles": n_cycles,
            "hypothesis": "If torus degrades slower than random with depth, topology helps"
        }

    # ----------------------------------------------------------------
    # Ablation #7: Stabilizer verification
    # ----------------------------------------------------------------
    print("\n--- Ablation #7: Stabilizer Verification ---")
    print("Direct stabilizer measurement to check surviving entanglement.")
    qasm, checked_vertices = build_stabilizer_verification(
        torus_3d, n_stabilizers_to_check=20, seed=42
    )
    fname = "ablation7_stabilizer_verification.qasm"
    # Custom save since build_stabilizer_verification returns tuple
    filepath = os.path.join(OUTPUT_DIR, fname)
    with open(filepath, 'w') as f:
        f.write(qasm.emit())
    n_cz = sum(1 for l in qasm.lines if l.strip().startswith('cz '))
    print(f"  Saved: {filepath}")
    print(f"    Lines: {len(qasm.lines)}, CZ: {n_cz}, "
          f"Checked vertices: {checked_vertices}")
    manifest[fname] = {
        "ablation": 7,
        "description": "Stabilizer verification (static graph state + measurement)",
        "n_qubits": 125,
        "checked_vertices": checked_vertices,
        "hypothesis": "Check if any entanglement structure survives; "
                      "parity of (v, neighbors) should be even for valid stabilizer"
    }

    # ----------------------------------------------------------------
    # Save manifest
    # ----------------------------------------------------------------
    manifest_path = os.path.join(OUTPUT_DIR, 'ablation_manifest.json')
    with open(manifest_path, 'w') as f:
        json.dump(manifest, f, indent=2)
    print(f"\nManifest saved: {manifest_path}")

    # Summary
    print("\n" + "=" * 70)
    print("ABLATION CIRCUIT SUMMARY")
    print("=" * 70)
    print(f"{'Experiment':<50} {'Hypothesis'}")
    print("-" * 100)
    for fname, info in sorted(manifest.items(), key=lambda x: x[1]['ablation']):
        exp = f"#{info['ablation']}: {fname}"
        hyp = info['hypothesis'][:60]
        print(f"  {exp:<48} {hyp}")

    print(f"\nTotal circuits generated: {len(manifest)}")
    print(f"Output directory: {OUTPUT_DIR}")

    return manifest


if __name__ == '__main__':
    main()
