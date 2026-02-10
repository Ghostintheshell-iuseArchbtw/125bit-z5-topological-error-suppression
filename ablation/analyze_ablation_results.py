#!/usr/bin/env python3
"""
ABLATION COMPARATIVE ANALYSIS
==============================
Computes the same five statistical invariants from the paper across ALL
ablation experiments and the original data, producing a unified comparison
table that directly answers each ablation hypothesis.

Invariants computed:
  I.   Normalized Shannon entropy (H_norm)
  II.  Parity bias (epsilon)
  III. Hamming weight fraction (<W>)
  IV.  Syndrome marginals P(m=1), P(n=1)
  V.   Per-qubit P_q(1) and dead qubit count

Usage:
    python analyze_ablation_results.py
"""

import json
import numpy as np
import os
import sys
from collections import Counter
from typing import Dict, List, Optional, Tuple

# Paths
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
RESULT_DIR = os.path.join(BASE_DIR, 'results')
ORIG_DATA_DIR = os.path.join(BASE_DIR, '..', 'data')
CIRCUIT_DIR = os.path.join(BASE_DIR, 'circuits')


# ============================================================================
# STATISTICAL INVARIANTS (identical to rigorous_verify.py)
# ============================================================================

def compute_invariants(counts: dict, n_data_bits: int = 125,
                       is_combined: bool = False) -> dict:
    """
    Compute all five statistical invariants from raw count data.

    Args:
        counts: Dict mapping bitstring -> count
        n_data_bits: Number of data qubits
        is_combined: Whether format is "data_bits m n"
    """
    total_shots = sum(counts.values())
    n_unique = len(counts)

    # Accumulators
    per_qubit_ones = np.zeros(n_data_bits)
    hamming_weights = []
    even_parity = 0
    m_ones = 0
    n_ones = 0
    has_syndrome = False

    for bitstring, count in counts.items():
        # Parse combined format if needed
        if is_combined:
            parts = bitstring.split(' ')
            if len(parts) == 3:
                data_bits = parts[0][:n_data_bits]
                m_val = int(parts[1])
                n_val = int(parts[2])
                m_ones += m_val * count
                n_ones += n_val * count
                has_syndrome = True
            else:
                data_bits = bitstring[:n_data_bits]
        else:
            data_bits = bitstring[:n_data_bits]

        # Hamming weight
        w = sum(1 for c in data_bits if c == '1')
        hamming_weights.extend([w] * count)

        # Per-qubit P(1)
        for i, bit in enumerate(data_bits):
            if i < n_data_bits and bit == '1':
                per_qubit_ones[i] += count

        # Parity
        if w % 2 == 0:
            even_parity += count

    # I. Normalized Shannon entropy
    if n_unique > 1:
        probs = np.array([c / total_shots for c in counts.values()])
        h_raw = -np.sum(probs * np.log2(probs + 1e-300))
        h_max = np.log2(n_unique)
        h_norm = h_raw / h_max if h_max > 0 else 0.0
    else:
        h_norm = 0.0

    # II. Parity bias
    p_even = even_parity / total_shots
    epsilon = 2 * p_even - 1  # +1 = all even, -1 = all odd, 0 = balanced

    # III. Hamming weight fraction
    mean_w = np.mean(hamming_weights) / n_data_bits
    std_w = np.std(hamming_weights) / n_data_bits / np.sqrt(total_shots)

    # IV. Syndrome marginals
    p_m1 = m_ones / total_shots if has_syndrome else None
    p_n1 = n_ones / total_shots if has_syndrome else None

    # V. Per-qubit P(1)
    per_qubit_p1 = per_qubit_ones / total_shots
    dead_threshold = 0.02
    dead_qubits = [i for i in range(n_data_bits) if per_qubit_p1[i] < dead_threshold]

    # Collisions
    n_collisions = total_shots - n_unique

    return {
        "total_shots": total_shots,
        "n_unique": n_unique,
        "uniqueness": n_unique / total_shots,
        "n_collisions": n_collisions,
        "H_norm": round(h_norm, 6),
        "epsilon": round(epsilon, 6),
        "epsilon_stderr": round(1.0 / np.sqrt(total_shots), 6),
        "W_mean": round(mean_w, 6),
        "W_stderr": round(std_w, 6),
        "P_m1": round(p_m1, 4) if p_m1 is not None else None,
        "P_n1": round(p_n1, 4) if p_n1 is not None else None,
        "n_dead": len(dead_qubits),
        "dead_indices": dead_qubits,
        "dead_fraction": round(len(dead_qubits) / n_data_bits, 4),
        "per_qubit_p1_mean": round(float(np.mean(per_qubit_p1)), 6),
        "per_qubit_p1_std": round(float(np.std(per_qubit_p1)), 6)
    }


def compute_clustering_stats(dead_indices: List[int], n_total: int = 125) -> dict:
    """Compute dead-qubit clustering statistics."""
    if len(dead_indices) < 2:
        return {"n_runs": len(dead_indices), "max_run": 1 if dead_indices else 0,
                "n_adjacent_pairs": 0}

    dead_set = set(dead_indices)
    sorted_dead = sorted(dead_indices)

    # Count runs of consecutive indices
    runs = []
    current_run = 1
    for i in range(1, len(sorted_dead)):
        if sorted_dead[i] == sorted_dead[i-1] + 1:
            current_run += 1
        else:
            runs.append(current_run)
            current_run = 1
    runs.append(current_run)

    # Adjacent pairs
    n_adjacent = sum(1 for i in sorted_dead if i + 1 in dead_set)

    return {
        "n_runs": len(runs),
        "max_run": max(runs) if runs else 0,
        "run_lengths": runs,
        "n_adjacent_pairs": n_adjacent
    }


# ============================================================================
# DATA LOADING
# ============================================================================

def load_original_data() -> Dict[str, dict]:
    """Load original experiment results for comparison baseline."""
    datasets = {}
    original_files = {
        "3D Torino 20k": ("ibm_torino_dynamic_counts_20000_combined.json", True),
        "3D Torino 50k": ("ibm_torino_dynamic_counts_50000_combined.json", True),
        "3D Marrakesh 20k": ("ibm_marrakesh_dynamic_counts_20000_combined.json", True),
        "3D Marrakesh 50k": ("ibm_marrakesh_dynamic_counts_50000_combined.json", True),
    }

    for label, (filename, is_combined) in original_files.items():
        filepath = os.path.join(ORIG_DATA_DIR, filename)
        if os.path.exists(filepath):
            with open(filepath) as f:
                data = json.load(f)
            counts = data.get('counts', data)
            if isinstance(counts, dict) and 'c' in counts:
                counts = counts['c']
            datasets[label] = {
                "counts": counts,
                "is_combined": is_combined,
                "source": "original_experiment"
            }

    return datasets


def load_ablation_results() -> Dict[str, dict]:
    """Load ablation experiment results."""
    datasets = {}
    if not os.path.exists(RESULT_DIR):
        return datasets

    manifest_path = os.path.join(CIRCUIT_DIR, 'ablation_manifest.json')
    manifest = {}
    if os.path.exists(manifest_path):
        with open(manifest_path) as f:
            manifest = json.load(f)

    for fname in os.listdir(RESULT_DIR):
        if fname.endswith('.json') and not fname.startswith('ablation_run'):
            filepath = os.path.join(RESULT_DIR, fname)
            with open(filepath) as f:
                data = json.load(f)

            counts = data.get('counts', data)
            meta = data.get('metadata', {})
            circuit = meta.get('circuit', fname)

            # Look up manifest info
            ablation_info = manifest.get(circuit, {})
            ablation_num = ablation_info.get('ablation', '?')
            description = ablation_info.get('description', circuit)

            label = f"Abl#{ablation_num}: {description}"
            datasets[label] = {
                "counts": counts,
                "is_combined": False,
                "source": "ablation_experiment",
                "ablation": ablation_num,
                "circuit": circuit
            }

    return datasets


# ============================================================================
# COMPARATIVE ANALYSIS
# ============================================================================

def run_comparative_analysis():
    """Run full comparative analysis across all datasets."""

    print("=" * 90)
    print("ABLATION COMPARATIVE ANALYSIS")
    print("=" * 90)

    # Load all data
    print("\nLoading original experiment data...")
    original = load_original_data()
    print(f"  Found {len(original)} original datasets")

    print("Loading ablation results...")
    ablation = load_ablation_results()
    print(f"  Found {len(ablation)} ablation datasets")

    if not original and not ablation:
        print("\nNo data found. Run experiments first:")
        print("  python generate_ablation_circuits.py")
        print("  python run_ablation_experiments.py --simulate --shots 1000")
        return

    # Compute invariants for all datasets
    all_results = {}
    all_datasets = {**original, **ablation}

    print(f"\nComputing invariants for {len(all_datasets)} datasets...\n")

    for label, data in all_datasets.items():
        counts = data['counts']
        is_combined = data.get('is_combined', False)

        # Detect n_data_bits from bitstring length
        sample_key = next(iter(counts))
        if is_combined:
            n_data = len(sample_key.split(' ')[0])
        else:
            n_data = len(sample_key)

        stats = compute_invariants(counts, n_data_bits=n_data,
                                   is_combined=is_combined)
        clustering = compute_clustering_stats(stats['dead_indices'], n_data)
        stats['clustering'] = clustering
        stats['source'] = data.get('source', 'unknown')
        all_results[label] = stats

    # ================================================================
    # PRINT RESULTS TABLE
    # ================================================================

    print("\n" + "=" * 130)
    print("UNIFIED COMPARISON TABLE")
    print("=" * 130)

    header = (f"{'Dataset':<40} {'Shots':>8} {'Unique':>8} {'H_norm':>10} "
              f"{'ε':>10} {'<W>':>8} {'Dead':>6} {'MaxRun':>7} {'Collisions':>11}")
    print(header)
    print("-" * 130)

    # Print original results first
    for label, stats in sorted(all_results.items()):
        if stats['source'] == 'original_experiment':
            _print_row(label, stats)

    if original:
        print("-" * 130)

    # Print ablation results
    for label, stats in sorted(all_results.items()):
        if stats['source'] == 'ablation_experiment':
            _print_row(label, stats)

    # ================================================================
    # ABLATION HYPOTHESIS TESTING
    # ================================================================

    print("\n\n" + "=" * 90)
    print("ABLATION HYPOTHESIS TESTS")
    print("=" * 90)

    # Get baseline (original 3D torus)
    baseline_key = None
    for k in all_results:
        if '3D Torino 50k' in k or '3D Marrakesh 50k' in k:
            baseline_key = k
            break
    if not baseline_key:
        baseline_key = next(iter(all_results)) if all_results else None

    if baseline_key:
        baseline = all_results[baseline_key]
        print(f"\nBaseline: {baseline_key}")
        print(f"  H_norm={baseline['H_norm']}, ε={baseline['epsilon']}, "
              f"<W>={baseline['W_mean']}, Dead={baseline['n_dead']}")

    # Test each ablation hypothesis
    ablation_groups = {}
    for label, stats in all_results.items():
        if stats['source'] == 'ablation_experiment':
            abl_num = label.split(':')[0] if ':' in label else 'unknown'
            if abl_num not in ablation_groups:
                ablation_groups[abl_num] = []
            ablation_groups[abl_num].append((label, stats))

    hypotheses = {
        "Abl#1": {
            "name": "Random Circuit Control",
            "test": "If topology matters: random should show WORSE H_norm and/or parity",
            "key_metrics": ["H_norm", "epsilon", "W_mean", "n_dead"]
        },
        "Abl#2": {
            "name": "Feedback Ablation",
            "test": "If corrections matter: parity should DEGRADE without corrections",
            "key_metrics": ["epsilon", "H_norm", "W_mean"]
        },
        "Abl#3": {
            "name": "Open Boundary",
            "test": "If non-contractible loops matter: H_norm/parity should DEGRADE",
            "key_metrics": ["H_norm", "epsilon", "n_dead"]
        },
        "Abl#5": {
            "name": "Depth Scaling",
            "test": "Torus should degrade SLOWER than random with increasing depth",
            "key_metrics": ["H_norm", "W_mean", "n_dead"]
        },
        "Abl#7": {
            "name": "Stabilizer Verification",
            "test": "Check stabilizer parity: even parity → entanglement survives",
            "key_metrics": ["epsilon", "H_norm"]
        }
    }

    for abl_id, hyp in hypotheses.items():
        print(f"\n{'─' * 70}")
        print(f"  {abl_id}: {hyp['name']}")
        print(f"  Hypothesis: {hyp['test']}")
        print(f"  Key metrics: {', '.join(hyp['key_metrics'])}")

        if abl_id in ablation_groups:
            for label, stats in ablation_groups[abl_id]:
                print(f"\n    {label}")
                for metric in hyp['key_metrics']:
                    val = stats.get(metric, 'N/A')
                    if baseline_key and metric in all_results.get(baseline_key, {}):
                        baseline_val = all_results[baseline_key][metric]
                        if isinstance(val, (int, float)) and isinstance(baseline_val, (int, float)):
                            if baseline_val != 0:
                                delta_pct = (val - baseline_val) / abs(baseline_val) * 100
                                direction = "↑" if delta_pct > 0 else "↓"
                                print(f"      {metric:>12}: {val:>12}  "
                                      f"(baseline: {baseline_val}, "
                                      f"{direction} {abs(delta_pct):.1f}%)")
                            else:
                                print(f"      {metric:>12}: {val:>12}  (baseline: {baseline_val})")
                        else:
                            print(f"      {metric:>12}: {val}")
                    else:
                        print(f"      {metric:>12}: {val}")
        else:
            print(f"    [No results yet — run experiments first]")

    # ================================================================
    # SAVE FULL RESULTS
    # ================================================================

    os.makedirs(RESULT_DIR, exist_ok=True)
    output_path = os.path.join(RESULT_DIR, 'ablation_comparative_analysis.json')
    with open(output_path, 'w') as f:
        # Convert numpy types
        clean_results = {}
        for k, v in all_results.items():
            clean = {}
            for kk, vv in v.items():
                if isinstance(vv, np.integer):
                    clean[kk] = int(vv)
                elif isinstance(vv, np.floating):
                    clean[kk] = float(vv)
                elif isinstance(vv, np.ndarray):
                    clean[kk] = vv.tolist()
                else:
                    clean[kk] = vv
            clean_results[k] = clean
        json.dump(clean_results, f, indent=2)
    print(f"\n\nFull results saved: {output_path}")

    # ================================================================
    # DECISION MATRIX
    # ================================================================

    print("\n\n" + "=" * 90)
    print("DECISION MATRIX: What Each Outcome Means")
    print("=" * 90)
    print("""
    ┌─────────────────────────────────────────────────────────────────────────┐
    │ ABLATION #1: Random Circuit Control                                     │
    │                                                                         │
    │  Random ≈ Torus    → Topology provides NO advantage. Bulk stats are     │
    │                       purely from noise + Hilbert space dimension.       │
    │                                                                         │
    │  Random << Torus   → Topology DOES provide measurable protection.       │
    │                       This would be the strongest possible finding.      │
    ├─────────────────────────────────────────────────────────────────────────┤
    │ ABLATION #2: Feedback Ablation                                          │
    │                                                                         │
    │  No-corr ≈ Torus   → Corrections are cosmetic; structure comes from     │
    │                       measure-reset cycle alone.                         │
    │                                                                         │
    │  No-corr << Torus  → Corrections are essential. The feedback loop       │
    │                       actively maintains the statistical invariants.     │
    ├─────────────────────────────────────────────────────────────────────────┤
    │ ABLATION #3: Open Boundary                                              │
    │                                                                         │
    │  Open ≈ Torus      → Non-contractible loops don't matter.               │
    │                       Local lattice structure is sufficient.             │
    │                                                                         │
    │  Open << Torus     → Periodic boundary conditions (global topology)     │
    │                       provide measurable protection.                     │
    ├─────────────────────────────────────────────────────────────────────────┤
    │ ABLATION #5: Depth Scaling                                              │
    │                                                                         │
    │  Both degrade      → No topological advantage at any depth.             │
    │  similarly                                                              │
    │                                                                         │
    │  Torus degrades    → Topology provides depth-dependent advantage.       │
    │  slower             This is the "error suppression" claim.              │
    ├─────────────────────────────────────────────────────────────────────────┤
    │ ABLATION #7: Stabilizer Verification                                    │
    │                                                                         │
    │  Random parity     → No entanglement survives. Graph state is fully     │
    │                       destroyed by noise.                                │
    │                                                                         │
    │  Biased parity     → Some stabilizer structure survives. This would     │
    │                       be genuinely surprising at 5-10x beyond T1.       │
    └─────────────────────────────────────────────────────────────────────────┘
    """)


def _print_row(label: str, stats: dict):
    """Print one row of the comparison table."""
    max_run = stats.get('clustering', {}).get('max_run', 0)
    print(f"{label:<40} {stats['total_shots']:>8} {stats['n_unique']:>8} "
          f"{stats['H_norm']:>10.6f} {stats['epsilon']:>+10.6f} "
          f"{stats['W_mean']:>8.4f} {stats['n_dead']:>6} "
          f"{max_run:>7} {stats['n_collisions']:>11}")


if __name__ == '__main__':
    run_comparative_analysis()
