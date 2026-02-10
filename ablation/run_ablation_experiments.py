#!/usr/bin/env python3
"""
ABLATION EXPERIMENT RUNNER
==========================
Submits ablation circuits to IBM Quantum backends and collects results.
Supports both local Qiskit Aer simulation and real hardware execution.

Usage:
    # Generate circuits first
    python generate_ablation_circuits.py

    # Dry run (simulate locally)
    python run_ablation_experiments.py --simulate --shots 1000

    # Submit to IBM hardware
    python run_ablation_experiments.py --backend ibm_torino --shots 20000

    # Submit specific ablation only
    python run_ablation_experiments.py --backend ibm_marrakesh --shots 50000 --ablation 1 2
"""

import argparse
import json
import os
import sys
import time
from datetime import datetime
from pathlib import Path

CIRCUIT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'circuits')
RESULT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'results')
os.makedirs(RESULT_DIR, exist_ok=True)


def load_manifest():
    """Load the ablation circuit manifest."""
    manifest_path = os.path.join(CIRCUIT_DIR, 'ablation_manifest.json')
    if not os.path.exists(manifest_path):
        print("ERROR: No manifest found. Run generate_ablation_circuits.py first.")
        sys.exit(1)
    with open(manifest_path) as f:
        return json.load(f)


def simulate_circuit(qasm_path: str, shots: int) -> dict:
    """Simulate a circuit locally using Qiskit Aer."""
    try:
        from qiskit import QuantumCircuit
        from qiskit_aer import AerSimulator
    except ImportError:
        print("ERROR: qiskit and qiskit-aer required for simulation.")
        print("  pip install qiskit qiskit-aer")
        sys.exit(1)

    print(f"  Loading circuit from {qasm_path}...")
    qc = QuantumCircuit.from_qasm_file(qasm_path)
    print(f"  Circuit: {qc.num_qubits} qubits, depth {qc.depth()}")

    sim = AerSimulator()
    print(f"  Simulating {shots} shots...")
    t0 = time.time()
    result = sim.run(qc, shots=shots).result()
    elapsed = time.time() - t0
    counts = result.get_counts()
    print(f"  Done in {elapsed:.1f}s. Unique outcomes: {len(counts)}")
    return counts


def submit_to_hardware(qasm_path: str, backend_name: str, shots: int) -> dict:
    """Submit a circuit to IBM Quantum hardware via Qiskit Runtime."""
    try:
        from qiskit import QuantumCircuit
        from qiskit_ibm_runtime import QiskitRuntimeService, SamplerV2
    except ImportError:
        print("ERROR: qiskit-ibm-runtime required for hardware execution.")
        print("  pip install qiskit qiskit-ibm-runtime")
        sys.exit(1)

    print(f"  Loading circuit from {qasm_path}...")
    qc = QuantumCircuit.from_qasm_file(qasm_path)

    print(f"  Connecting to {backend_name}...")
    service = QiskitRuntimeService()
    backend = service.backend(backend_name)

    print(f"  Submitting {shots} shots to {backend_name}...")
    sampler = SamplerV2(backend)
    job = sampler.run([qc], shots=shots)
    print(f"  Job ID: {job.job_id()}")
    print(f"  Waiting for results...")

    result = job.result()
    counts = result[0].data.c.get_counts()
    print(f"  Done. Unique outcomes: {len(counts)}")

    # Save job metadata
    job_info = {
        "job_id": job.job_id(),
        "backend": backend_name,
        "shots": shots,
        "circuit": os.path.basename(qasm_path),
        "timestamp": datetime.now().isoformat(),
        "status": str(job.status())
    }
    info_path = os.path.join(RESULT_DIR, f"job-{job.job_id()}-info.json")
    with open(info_path, 'w') as f:
        json.dump(job_info, f, indent=2)

    return counts


def save_results(counts: dict, circuit_name: str, backend: str, shots: int):
    """Save results in the same format as the original experiment data."""
    result = {
        "counts": counts,
        "metadata": {
            "circuit": circuit_name,
            "backend": backend,
            "shots": shots,
            "timestamp": datetime.now().isoformat(),
            "n_unique": len(counts),
            "total_shots": sum(counts.values())
        }
    }
    safe_name = circuit_name.replace('.qasm', '')
    fname = f"{backend}_{safe_name}_{shots}.json"
    filepath = os.path.join(RESULT_DIR, fname)
    with open(filepath, 'w') as f:
        json.dump(result, f)
    print(f"  Results saved: {filepath}")
    return filepath


def main():
    parser = argparse.ArgumentParser(
        description="Run ablation experiments on IBM Quantum hardware or simulator"
    )
    parser.add_argument('--simulate', action='store_true',
                        help='Run locally with Qiskit Aer (no hardware)')
    parser.add_argument('--backend', type=str, default='ibm_torino',
                        help='IBM Quantum backend (default: ibm_torino)')
    parser.add_argument('--shots', type=int, default=20000,
                        help='Number of shots per circuit (default: 20000)')
    parser.add_argument('--ablation', type=int, nargs='*',
                        help='Which ablation numbers to run (default: all)')
    parser.add_argument('--dry-run', action='store_true',
                        help='Just list circuits, don\'t execute')

    args = parser.parse_args()
    manifest = load_manifest()

    # Filter by ablation number if specified
    if args.ablation:
        manifest = {k: v for k, v in manifest.items()
                    if v['ablation'] in args.ablation}

    print("=" * 70)
    print("ABLATION EXPERIMENT RUNNER")
    print("=" * 70)
    print(f"Backend:  {'Aer Simulator' if args.simulate else args.backend}")
    print(f"Shots:    {args.shots}")
    print(f"Circuits: {len(manifest)}")
    print()

    if args.dry_run:
        print("DRY RUN — listing circuits to be executed:\n")
        for fname, info in sorted(manifest.items(), key=lambda x: x[1]['ablation']):
            qasm_path = os.path.join(CIRCUIT_DIR, fname)
            exists = "✓" if os.path.exists(qasm_path) else "✗ MISSING"
            print(f"  [{exists}] #{info['ablation']}: {fname}")
            print(f"         {info['description']}")
        return

    # Execute each circuit
    results_summary = []
    for i, (fname, info) in enumerate(sorted(manifest.items(),
                                              key=lambda x: x[1]['ablation'])):
        qasm_path = os.path.join(CIRCUIT_DIR, fname)
        if not os.path.exists(qasm_path):
            print(f"\n[{i+1}/{len(manifest)}] SKIPPING {fname} (file not found)")
            continue

        print(f"\n[{i+1}/{len(manifest)}] Ablation #{info['ablation']}: {fname}")
        print(f"  {info['description']}")

        try:
            if args.simulate:
                counts = simulate_circuit(qasm_path, args.shots)
                backend_label = "aer_simulator"
            else:
                counts = submit_to_hardware(qasm_path, args.backend, args.shots)
                backend_label = args.backend

            result_path = save_results(counts, fname, backend_label, args.shots)
            results_summary.append({
                "circuit": fname,
                "ablation": info['ablation'],
                "backend": backend_label,
                "shots": args.shots,
                "n_unique": len(counts),
                "result_file": result_path
            })
        except Exception as e:
            print(f"  ERROR: {e}")
            results_summary.append({
                "circuit": fname,
                "ablation": info['ablation'],
                "error": str(e)
            })

    # Save summary
    summary_path = os.path.join(RESULT_DIR, f"ablation_run_summary_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json")
    with open(summary_path, 'w') as f:
        json.dump(results_summary, f, indent=2)
    print(f"\n\nRun summary saved: {summary_path}")

    # Print results table
    print("\n" + "=" * 70)
    print("EXECUTION SUMMARY")
    print("=" * 70)
    for r in results_summary:
        status = f"✓ {r.get('n_unique', '?')} unique" if 'n_unique' in r else f"✗ {r.get('error', 'failed')}"
        print(f"  #{r['ablation']}: {r['circuit']:<48} {status}")


if __name__ == '__main__':
    main()
