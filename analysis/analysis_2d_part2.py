import json
import numpy as np
from collections import Counter
import math
from scipy import stats

DATA_DIR = "/home/ghost/Desktop/quantumopus/release/data"

def hamming_weight(bitstring):
    return bitstring.replace(' ', '').count('1')

def parity(bitstring):
    return hamming_weight(bitstring) % 2

def shannon_entropy(counts_dict, total_shots):
    H = 0.0
    for bs, cnt in counts_dict.items():
        p = cnt / total_shots
        if p > 0:
            H -= p * math.log2(p)
    return H

def expand_counts(counts_dict):
    result = []
    for bs, cnt in counts_dict.items():
        result.extend([bs] * cnt)
    return result

# =====================================================================
# ANALYZE SEPARATED REGISTER DATA (non-combined 2D files)
# =====================================================================

print("=" * 80)
print("SECTION 2: 2D TORUS - REGISTER-SEPARATED ANALYSIS")
print("=" * 80)

sep_2d = {
    "Marrakesh 20k": f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_20000.json",
    "Marrakesh 50k": f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_50000.json",
    "Torino 20k": f"{DATA_DIR}/ibm_torino_z5x5_dynamic_counts_20000.json",
}

for name, path in sep_2d.items():
    with open(path, 'r') as f:
        data = json.load(f)

    counts = data['counts']
    total_shots = data['shots']
    registers = data['registers']

    print(f"\n{'='*60}")
    print(f"  {name} - Separated Registers")
    print(f"{'='*60}")
    print(f"  Registers: {registers}")

    for reg_name, reg_counts in counts.items():
        n_unique_reg = len(reg_counts)
        total_reg = sum(reg_counts.values())
        first_bs = list(reg_counts.keys())[0]
        n_bits_reg = len(first_bs)

        # Expand and compute stats
        bs_list = expand_counts(reg_counts)
        weights = [hamming_weight(bs) for bs in bs_list]
        W_mean = np.mean(weights)
        W_std = np.std(weights, ddof=1)
        W_stderr = W_std / math.sqrt(len(weights))

        collisions = total_reg - n_unique_reg

        print(f"\n  Register '{reg_name}':")
        print(f"    Bits:          {n_bits_reg}")
        print(f"    Total:         {total_reg:,}")
        print(f"    Unique:        {n_unique_reg:,} ({n_unique_reg/total_reg*100:.3f}%)")
        print(f"    Collisions:    {collisions:,}")
        print(f"    <W>:           {W_mean:.4f} +/- {W_stderr:.4f}")
        if n_bits_reg > 0:
            print(f"    <W>/n:         {W_mean/n_bits_reg:.6f}")

        if reg_name == 'c':
            # This is the main code register - do per-qubit analysis
            p1 = np.zeros(n_bits_reg)
            for bs, cnt in reg_counts.items():
                for i, ch in enumerate(bs):
                    if ch == '1':
                        p1[i] += cnt
            p1 /= total_reg

            dead_threshold = 0.02
            dead_qubits = np.where(p1 < dead_threshold)[0]
            hot_qubits = np.where(p1 > 0.4)[0]

            print(f"    Per-qubit P(1):")
            print(f"      Min:   {p1.min():.6f} (qubit {np.argmin(p1)})")
            print(f"      Max:   {p1.max():.6f} (qubit {np.argmax(p1)})")
            print(f"      Mean:  {np.mean(p1):.6f}")
            print(f"      Std:   {np.std(p1):.6f}")
            print(f"      Dead (<{dead_threshold}): {len(dead_qubits)} at indices {dead_qubits.tolist()}")
            print(f"      Hot (>0.4):  {len(hot_qubits)} at indices {hot_qubits.tolist()}")
            print(f"      All P(1): {np.array2string(p1, precision=4, separator=', ')}")
