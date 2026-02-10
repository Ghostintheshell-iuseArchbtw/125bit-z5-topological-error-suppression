#!/usr/bin/env python3
"""
ABLATION HARDWARE SUBMISSION
=============================
Submits ablation circuits to IBM Quantum hardware.
Handles OpenQASM 3.0 with dynamic features (mid-circuit measurement,
reset, conditional operations).

Results are saved locally — nothing is pushed to GitHub.
"""

import json
import os
import sys
import time
from datetime import datetime

from qiskit_ibm_runtime import QiskitRuntimeService, SamplerV2
from qiskit.qasm3 import loads as qasm3_loads
from qiskit import QuantumCircuit

# ============================================================================
# Config
# ============================================================================

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
CIRCUIT_DIR = os.path.join(BASE_DIR, 'circuits')
RESULT_DIR = os.path.join(BASE_DIR, 'results')
os.makedirs(RESULT_DIR, exist_ok=True)

# ============================================================================
# Circuit loading
# ============================================================================

def load_qasm3_circuit(filepath: str) -> QuantumCircuit:
    """Load an OpenQASM 3.0 circuit from file."""
    with open(filepath, 'r') as f:
        qasm_str = f.read()
    return qasm3_loads(qasm_str)


def get_circuit_info(qc: QuantumCircuit) -> dict:
    """Get basic circuit statistics."""
    return {
        "n_qubits": qc.num_qubits,
        "n_clbits": qc.num_clbits,
        "depth": qc.depth(),
        "size": qc.size(),
        "n_ops": dict(qc.count_ops())
    }


# ============================================================================
# Submission
# ============================================================================

def submit_circuit(
    service: QiskitRuntimeService,
    backend_name: str,
    circuit_path: str,
    shots: int,
    job_tags: list = None
) -> dict:
    """
    Submit a single circuit to IBM Quantum hardware.
    Returns job metadata dict.
    """
    fname = os.path.basename(circuit_path)
    print(f"\n  Loading {fname}...")
    qc = load_qasm3_circuit(circuit_path)
    info = get_circuit_info(qc)
    print(f"    {info['n_qubits']} qubits, depth {info['depth']}, "
          f"{info['size']} ops")

    print(f"  Transpiling for {backend_name}...")
    backend = service.backend(backend_name)

    # Use SamplerV2 for dynamic circuits
    from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager
    pm = generate_preset_pass_manager(optimization_level=1, backend=backend)
    transpiled = pm.run(qc)
    t_info = get_circuit_info(transpiled)
    print(f"    Transpiled: depth {t_info['depth']}, {t_info['size']} ops")

    print(f"  Submitting {shots} shots to {backend_name}...")
    sampler = SamplerV2(backend)
    tags = job_tags or []
    tags.append(f"ablation-{fname.replace('.qasm', '')}")
    job = sampler.run([transpiled], shots=shots)

    job_id = job.job_id()
    print(f"  ✓ Job submitted: {job_id}")

    metadata = {
        "job_id": job_id,
        "backend": backend_name,
        "circuit_file": fname,
        "shots": shots,
        "submitted_at": datetime.now().isoformat(),
        "circuit_info": info,
        "transpiled_info": t_info,
        "tags": tags
    }

    # Save job metadata immediately
    meta_path = os.path.join(RESULT_DIR, f"job-{job_id}-meta.json")
    with open(meta_path, 'w') as f:
        json.dump(metadata, f, indent=2)

    return metadata


def collect_result(service: QiskitRuntimeService, job_id: str) -> dict:
    """Retrieve results for a completed job."""
    job = service.job(job_id)
    st = job.status()
    status_str = st.name if hasattr(st, 'name') else str(st)
    if status_str != 'DONE':
        return {"job_id": job_id, "status": status_str, "done": False}

    result = job.result()
    # Extract counts from all classical registers
    pub_result = result[0]
    counts_data = {}

    # Try to get counts from each classical register
    for attr in ['c', 'm', 'n']:
        try:
            creg = getattr(pub_result.data, attr, None)
            if creg is not None:
                counts_data[attr] = creg.get_counts()
        except Exception:
            pass

    # If no named registers found, try generic
    if not counts_data:
        try:
            counts_data['counts'] = pub_result.data.meas.get_counts()
        except Exception:
            pass

    return {
        "job_id": job_id,
        "status": "DONE",
        "done": True,
        "counts": counts_data,
        "metadata": {
            "backend": job.backend().name,
            "shots": sum(next(iter(counts_data.values())).values()) if counts_data else 0,
            "retrieved_at": datetime.now().isoformat()
        }
    }


# ============================================================================
# Main
# ============================================================================

def main():
    import argparse
    parser = argparse.ArgumentParser(description="Submit ablation circuits to IBM Quantum")
    parser.add_argument('--backend', type=str, nargs='+',
                        default=['ibm_torino', 'ibm_marrakesh'],
                        help='Backend(s) to submit to')
    parser.add_argument('--shots', type=int, default=50000)
    parser.add_argument('--circuits', type=str, nargs='*',
                        help='Specific circuit files (default: all in manifest)')
    parser.add_argument('--collect', action='store_true',
                        help='Collect results for previously submitted jobs')
    parser.add_argument('--status', action='store_true',
                        help='Check status of all submitted jobs')
    parser.add_argument('--priority', type=int, nargs='*',
                        help='Only submit these ablation numbers (e.g., --priority 1 2)')
    args = parser.parse_args()

    service = QiskitRuntimeService()

    # ---- Status check mode ----
    if args.status:
        print("=" * 70)
        print("JOB STATUS")
        print("=" * 70)
        meta_files = sorted(f for f in os.listdir(RESULT_DIR) if f.endswith('-meta.json'))
        for mf in meta_files:
            with open(os.path.join(RESULT_DIR, mf)) as f:
                meta = json.load(f)
            job_id = meta['job_id']
            try:
                job = service.job(job_id)
                st = job.status()
                status = st.name if hasattr(st, 'name') else str(st)
            except Exception as e:
                status = f"ERROR: {e}"
            result_exists = os.path.exists(
                os.path.join(RESULT_DIR, f"job-{job_id}-result.json"))
            print(f"  {meta['circuit_file']:<50} {meta['backend']:<16} "
                  f"{status:<12} {'[saved]' if result_exists else ''}")
        return

    # ---- Collect results mode ----
    if args.collect:
        print("=" * 70)
        print("COLLECTING RESULTS")
        print("=" * 70)
        meta_files = sorted(f for f in os.listdir(RESULT_DIR) if f.endswith('-meta.json'))
        for mf in meta_files:
            with open(os.path.join(RESULT_DIR, mf)) as f:
                meta = json.load(f)
            job_id = meta['job_id']
            result_path = os.path.join(RESULT_DIR, f"job-{job_id}-result.json")
            if os.path.exists(result_path):
                print(f"  {meta['circuit_file']}: already collected")
                continue

            print(f"  {meta['circuit_file']} ({meta['backend']})...")
            result = collect_result(service, job_id)
            if result['done']:
                with open(result_path, 'w') as f:
                    json.dump(result, f)
                n_counts = len(next(iter(result['counts'].values()))) if result['counts'] else 0
                print(f"    ✓ Saved: {n_counts} unique outcomes")
            else:
                print(f"    ⏳ Status: {result['status']} — not ready yet")
        return

    # ---- Submit mode ----
    # Load manifest
    manifest_path = os.path.join(CIRCUIT_DIR, 'ablation_manifest.json')
    with open(manifest_path) as f:
        manifest = json.load(f)

    # Filter circuits
    if args.circuits:
        manifest = {k: v for k, v in manifest.items() if k in args.circuits}
    if args.priority:
        manifest = {k: v for k, v in manifest.items()
                    if v['ablation'] in args.priority}

    # Sort by ablation number for orderly submission
    sorted_circuits = sorted(manifest.items(), key=lambda x: (x[1]['ablation'], x[0]))

    print("=" * 70)
    print("ABLATION EXPERIMENT SUBMISSION")
    print("=" * 70)
    print(f"Backends:  {', '.join(args.backend)}")
    print(f"Shots:     {args.shots}")
    print(f"Circuits:  {len(sorted_circuits)}")
    print(f"Total jobs: {len(sorted_circuits) * len(args.backend)}")
    print()

    all_jobs = []

    for backend_name in args.backend:
        print(f"\n{'='*50}")
        print(f"BACKEND: {backend_name}")
        print(f"{'='*50}")

        for fname, info in sorted_circuits:
            circuit_path = os.path.join(CIRCUIT_DIR, fname)
            if not os.path.exists(circuit_path):
                print(f"\n  SKIP {fname}: file not found")
                continue

            print(f"\n[Abl#{info['ablation']}] {fname}")
            print(f"  {info['description']}")

            try:
                meta = submit_circuit(
                    service, backend_name, circuit_path, args.shots,
                    job_tags=[f"ablation{info['ablation']}", backend_name]
                )
                all_jobs.append(meta)
            except Exception as e:
                print(f"  ✗ FAILED: {e}")
                all_jobs.append({
                    "circuit_file": fname,
                    "backend": backend_name,
                    "error": str(e),
                    "submitted_at": datetime.now().isoformat()
                })

            # Brief pause between submissions to avoid rate limits
            time.sleep(1)

    # Save submission summary
    summary = {
        "submitted_at": datetime.now().isoformat(),
        "backends": args.backend,
        "shots": args.shots,
        "jobs": all_jobs
    }
    summary_path = os.path.join(RESULT_DIR,
                                f"submission_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json")
    with open(summary_path, 'w') as f:
        json.dump(summary, f, indent=2)

    print(f"\n\n{'='*70}")
    print("SUBMISSION SUMMARY")
    print(f"{'='*70}")
    submitted = [j for j in all_jobs if 'job_id' in j]
    failed = [j for j in all_jobs if 'error' in j]
    print(f"  Submitted: {len(submitted)}")
    print(f"  Failed:    {len(failed)}")
    print(f"  Summary:   {summary_path}")

    if submitted:
        print(f"\nJob IDs:")
        for j in submitted:
            print(f"  {j['circuit_file']:<50} {j['backend']:<16} {j['job_id']}")

    print(f"\nTo check status:  .venv/bin/python ablation/submit_to_hardware.py --status")
    print(f"To collect results: .venv/bin/python ablation/submit_to_hardware.py --collect")


if __name__ == '__main__':
    main()
