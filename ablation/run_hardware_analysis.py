#!/usr/bin/env python3
"""Analyze real hardware ablation results vs original experiment data."""

import json
import numpy as np
import os

BASE = os.path.dirname(os.path.abspath(__file__))
RESULTS = os.path.join(BASE, 'results')
DATA = os.path.join(BASE, '..', 'data')


def compute_invariants(counts, n_data_bits=125, is_combined=False):
    total_shots = sum(counts.values())
    n_unique = len(counts)
    per_qubit_ones = np.zeros(n_data_bits)
    hamming_weights = []
    even_parity = 0
    m_ones = 0
    n_ones = 0
    has_syndrome = False

    for bitstring, count in counts.items():
        if is_combined:
            parts = bitstring.split(' ')
            if len(parts) == 3:
                data_bits = parts[0][:n_data_bits]
                m_ones += int(parts[1]) * count
                n_ones += int(parts[2]) * count
                has_syndrome = True
            else:
                data_bits = bitstring[:n_data_bits]
        else:
            data_bits = bitstring[:n_data_bits]

        w = sum(1 for c in data_bits if c == '1')
        hamming_weights.extend([w] * count)
        for i, bit in enumerate(data_bits):
            if i < n_data_bits and bit == '1':
                per_qubit_ones[i] += count
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
    epsilon = 2 * p_even - 1

    # III. Hamming weight fraction
    mean_w = np.mean(hamming_weights) / n_data_bits

    # IV. Syndrome marginals
    p_m1 = m_ones / total_shots if has_syndrome else None
    p_n1 = n_ones / total_shots if has_syndrome else None

    # V. Per-qubit P(1)
    per_qubit_p1 = per_qubit_ones / total_shots
    dead_qubits = [i for i in range(n_data_bits) if per_qubit_p1[i] < 0.02]

    return {
        'shots': total_shots,
        'unique': n_unique,
        'H_norm': round(h_norm, 6),
        'epsilon': round(epsilon, 6),
        'W_mean': round(mean_w, 6),
        'n_dead': len(dead_qubits),
        'dead_idx': dead_qubits,
        'P_m1': round(p_m1, 4) if p_m1 is not None else None,
        'P_n1': round(p_n1, 4) if p_n1 is not None else None,
        'p1_mean': round(float(np.mean(per_qubit_p1)), 6),
        'p1_std': round(float(np.std(per_qubit_p1)), 6),
        'collisions': total_shots - n_unique,
    }


def main():
    # === Load original data ===
    originals = {}
    orig_files = {
        'ORIG Torino 50k': ('ibm_torino_dynamic_counts_50000_combined.json', True),
        'ORIG Marrakesh 50k': ('ibm_marrakesh_dynamic_counts_50000_combined.json', True),
    }
    for label, (fname, is_comb) in orig_files.items():
        fp = os.path.join(DATA, fname)
        if os.path.exists(fp):
            with open(fp) as f:
                d = json.load(f)
            counts = d.get('counts', d)
            originals[label] = compute_invariants(counts, is_combined=is_comb)

    # === Load ablation hardware results ===
    ablation = {}
    abl_files = {
        'ABL#1 random_ctrl (Torino)': 'ibm_torino_random_control_seed42_counts.json',
        'ABL#1 random_ctrl (Marrakesh)': 'ibm_marrakesh_random_control_seed42_counts.json',
        'ABL#2 no_corrections (Torino)': 'ibm_torino_no_corrections_counts.json',
        'ABL#2 no_corrections (Marrakesh)': 'ibm_marrakesh_no_corrections_counts.json',
        'ABL#7 stabilizer_verif (Torino)': 'ibm_torino_stabilizer_verification_counts.json',
        'ABL#7 stabilizer_verif (Marrakesh)': 'ibm_marrakesh_stabilizer_verification_counts.json',
    }
    for label, fname in abl_files.items():
        fp = os.path.join(RESULTS, fname)
        if os.path.exists(fp):
            with open(fp) as f:
                counts = json.load(f)
            sample = next(iter(counts))
            n_bits = len(sample)
            ablation[label] = compute_invariants(counts, n_data_bits=n_bits)

    # === Print comparison table ===
    print('=' * 120)
    print('ABLATION STUDY — REAL HARDWARE RESULTS (IBM Heron)')
    print('=' * 120)
    header = (f"{'Dataset':<38} {'Shots':>7} {'Unique':>7} {'H_norm':>10} "
              f"{'epsilon':>10} {'<W>':>8} {'Dead':>5} {'P(m=1)':>7} {'P(n=1)':>7}")
    print(header)
    print('-' * 120)

    for label, s in originals.items():
        pm = str(s['P_m1']) if s['P_m1'] is not None else '-'
        pn = str(s['P_n1']) if s['P_n1'] is not None else '-'
        print(f"{label:<38} {s['shots']:>7} {s['unique']:>7} {s['H_norm']:>10.6f} "
              f"{s['epsilon']:>+10.6f} {s['W_mean']:>8.4f} {s['n_dead']:>5} {pm:>7} {pn:>7}")

    print('-' * 120)

    for label, s in ablation.items():
        pm = str(s['P_m1']) if s['P_m1'] is not None else '-'
        pn = str(s['P_n1']) if s['P_n1'] is not None else '-'
        print(f"{label:<38} {s['shots']:>7} {s['unique']:>7} {s['H_norm']:>10.6f} "
              f"{s['epsilon']:>+10.6f} {s['W_mean']:>8.4f} {s['n_dead']:>5} {pm:>7} {pn:>7}")

    # === Hypothesis analysis ===
    print()
    print('=' * 120)
    print('HYPOTHESIS ANALYSIS')
    print('=' * 120)

    base_t = originals.get('ORIG Torino 50k', {})
    base_m = originals.get('ORIG Marrakesh 50k', {})

    def compare(abl_stats, base_stats):
        if not base_stats or not abl_stats:
            return
        for metric in ['H_norm', 'epsilon', 'W_mean', 'n_dead']:
            a = abl_stats[metric]
            b = base_stats[metric]
            if isinstance(b, (int, float)) and b != 0:
                delta = (a - b) / abs(b) * 100
                arrow = '↑' if delta > 0 else '↓'
                print(f"    {metric:>10}: {a:>12}  vs baseline {b:>12}  "
                      f"({arrow} {abs(delta):.2f}%)")
            else:
                print(f"    {metric:>10}: {a:>12}  vs baseline {b:>12}")

    print()
    print('ABL#1: RANDOM CIRCUIT CONTROL')
    print('  If random ≈ torus → topology provides no advantage')
    print('  If random << torus → topology provides measurable protection')
    for suffix, base in [('Torino', base_t), ('Marrakesh', base_m)]:
        key = f'ABL#1 random_ctrl ({suffix})'
        if key in ablation:
            print(f'  [{suffix}]')
            compare(ablation[key], base)

    print()
    print('ABL#2: FEEDBACK ABLATION (no corrections)')
    print('  If no-corr ≈ torus → corrections are cosmetic')
    print('  If no-corr << torus → corrections actively maintain invariants')
    for suffix, base in [('Torino', base_t), ('Marrakesh', base_m)]:
        key = f'ABL#2 no_corrections ({suffix})'
        if key in ablation:
            print(f'  [{suffix}]')
            compare(ablation[key], base)

    print()
    print('ABL#7: STABILIZER VERIFICATION')
    print('  If parity ≈ 0 → no entanglement survives, graph state destroyed')
    print('  If parity biased → some stabilizer structure survives')
    for suffix, base in [('Torino', base_t), ('Marrakesh', base_m)]:
        key = f'ABL#7 stabilizer_verif ({suffix})'
        if key in ablation:
            print(f'  [{suffix}]')
            compare(ablation[key], base)

    # === Save full results ===
    all_results = {**originals, **ablation}
    out = os.path.join(RESULTS, 'hardware_ablation_analysis.json')
    with open(out, 'w') as f:
        clean = {}
        for k, v in all_results.items():
            clean[k] = {}
            for kk, vv in v.items():
                if isinstance(vv, np.integer):
                    clean[k][kk] = int(vv)
                elif isinstance(vv, np.floating):
                    clean[k][kk] = float(vv)
                elif isinstance(vv, np.ndarray):
                    clean[k][kk] = vv.tolist()
                else:
                    clean[k][kk] = vv
        json.dump(clean, f, indent=2)
    print(f'\nFull results saved to {out}')


if __name__ == '__main__':
    main()
