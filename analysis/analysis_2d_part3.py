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
# SECTION 3: STATIC SCAFFOLD DATA
# =====================================================================
print("=" * 80)
print("SECTION 3: STATIC SCAFFOLD (125 QUBITS, IBM MARRAKESH) DATA ANALYSIS")
print("=" * 80)

with open(f"{DATA_DIR}/ibm_marrakesh_static_counts_20000.json", 'r') as f:
    static_data = json.load(f)

static_counts = static_data['counts']
static_shots = static_data['shots']
first_bs = list(static_counts.keys())[0]
n_bits_static = len(first_bs)

n_unique_static = len(static_counts)
total_static = sum(static_counts.values())
collisions_static = total_static - n_unique_static

H_static = shannon_entropy(static_counts, total_static)
H_max_static = math.log2(total_static)

# Hamming weight
bs_list_static = expand_counts(static_counts)
weights_static = [hamming_weight(bs) for bs in bs_list_static]
W_mean_s = np.mean(weights_static)
W_std_s = np.std(weights_static, ddof=1)
W_stderr_s = W_std_s / math.sqrt(len(weights_static))
W_frac_s = W_mean_s / n_bits_static
W_expected_s = n_bits_static / 2.0

# Parity
parities_static = [parity(bs) for bs in bs_list_static]
p_even_s = parities_static.count(0) / len(parities_static)
p_odd_s = parities_static.count(1) / len(parities_static)
epsilon_s = p_even_s - p_odd_s

# Per-qubit P(1)
p1_static = np.zeros(n_bits_static)
for bs, cnt in static_counts.items():
    for i, ch in enumerate(bs):
        if ch == '1':
            p1_static[i] += cnt
p1_static /= total_static

dead_threshold = 0.02
dead_static = np.where(p1_static < dead_threshold)[0]
hot_static = np.where(p1_static > 0.4)[0]

collision_dist_static = Counter(static_counts.values())

print(f"\n  Backend:             {static_data['backend']}")
print(f"  Job ID:              {static_data['job_id']}")
print(f"  Total shots:         {total_static:,}")
print(f"  Bitstring length:    {n_bits_static} bits")
print(f"  Unique outcomes:     {n_unique_static:,} ({n_unique_static/total_static*100:.6f}%)")
print(f"  Collisions:          {collisions_static:,} ({collisions_static/total_static*100:.6f}%)")
print(f"  Shannon entropy H:   {H_static:.6f} bits")
print(f"  H_max (sample):      {H_max_static:.6f} bits")
print(f"  H_norm (H/H_max):    {H_static/H_max_static:.10f}")
print(f"  H_space (2^{n_bits_static}):    {n_bits_static} bits")
print(f"  H_efficiency:        {H_static/n_bits_static:.6f}")
print(f"  <W> (raw):           {W_mean_s:.4f} +/- {W_stderr_s:.4f}")
print(f"  <W> (fraction):      {W_frac_s:.6f} +/- {W_stderr_s/n_bits_static:.6f}")
print(f"  W expected (fair):   {W_expected_s:.1f}")
print(f"  W z-score:           {(W_mean_s - W_expected_s)/W_stderr_s:.2f}")
print(f"  Parity bias eps:     {epsilon_s:.6f}")
print(f"  P(even):             {p_even_s:.6f}")
print(f"  P(odd):              {p_odd_s:.6f}")
print(f"  Collision dist:      {dict(sorted(collision_dist_static.items()))}")

print(f"\n  Per-qubit P(1) for Static Scaffold:")
print(f"    Min:   {p1_static.min():.6f} (qubit {np.argmin(p1_static)})")
print(f"    Max:   {p1_static.max():.6f} (qubit {np.argmax(p1_static)})")
print(f"    Mean:  {np.mean(p1_static):.6f}")
print(f"    Std:   {np.std(p1_static):.6f}")
print(f"    Dead (<{dead_threshold}): {len(dead_static)} at indices {dead_static.tolist()}")
print(f"    Hot (>0.4):  {len(hot_static)} at indices {hot_static.tolist()}")


# =====================================================================
# SECTION 4: BIRTHDAY PARADOX ANALYSIS
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 4: BIRTHDAY PARADOX ANALYSIS")
print("=" * 80)

def expected_collisions_birthday(n_samples, n_space):
    """Expected number of collisions for n_samples drawn uniformly from space of size n_space.
    E[collisions] = n_samples - n_space * (1 - (1 - 1/n_space)^n_samples)
    For large n_space, approx: n_samples^2 / (2 * n_space)
    """
    # Use the exact formula for smaller spaces, approximation for larger
    if n_space < 1e30:
        # For 2^25
        E_unique = n_space * (1 - (1 - 1/n_space)**n_samples)
        E_collisions = n_samples - E_unique
        return E_collisions
    else:
        # For 2^125, use approximation
        return n_samples**2 / (2.0 * n_space)

configs = [
    # (label, n_samples, n_bits, observed_collisions_code_register, observed_collisions_combined)
    ("2D Marrakesh 20k", 20000, 25, 1681, 568),
    ("2D Marrakesh 50k", 50000, 25, 4467, 1446),
    ("2D Torino 20k", 20000, 25, 149, 35),
    ("3D Marrakesh 20k (from verified_stats)", 20000, 125, 1, None),
    ("3D Marrakesh 50k (from verified_stats)", 50000, 125, 14, None),
    ("Static Marrakesh 20k", 20000, 125, collisions_static, None),
]

for label, n_samples, n_bits, obs_coll_code, obs_coll_comb in configs:
    n_space = 2**n_bits
    E_coll = expected_collisions_birthday(n_samples, n_space)

    print(f"\n  {label}:")
    print(f"    Space size:        2^{n_bits} = {n_space:.4e}")
    print(f"    Samples:           {n_samples:,}")
    print(f"    Expected collisions (birthday): {E_coll:.4f}")
    print(f"    Observed collisions (code reg): {obs_coll_code}")
    if obs_coll_comb is not None:
        n_space_comb = 2**(n_bits + 2)  # +2 for m,n registers
        E_coll_comb = expected_collisions_birthday(n_samples, n_space_comb)
        print(f"    Expected collisions (combined 2^{n_bits+2}): {E_coll_comb:.4f}")
        print(f"    Observed collisions (combined): {obs_coll_comb}")

    if obs_coll_code is not None and E_coll > 0:
        ratio = obs_coll_code / E_coll
        print(f"    Observed/Expected ratio:        {ratio:.2f}x")
        # For Poisson process, variance ~ E_coll
        if E_coll > 5:
            z = (obs_coll_code - E_coll) / math.sqrt(E_coll)
            print(f"    Z-score (Poisson):              {z:.2f}")


# =====================================================================
# SECTION 5: 2D vs 3D COMPARISON TABLE
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 5: 2D vs 3D COMPARISON TABLE")
print("=" * 80)

# Load 3D combined data for direct comparison
with open(f"{DATA_DIR}/ibm_marrakesh_dynamic_counts_20000_combined.json", 'r') as f:
    marr3d_20k = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_dynamic_counts_50000_combined.json", 'r') as f:
    marr3d_50k = json.load(f)
with open(f"{DATA_DIR}/ibm_torino_dynamic_counts_20000_combined.json", 'r') as f:
    tor3d_20k = json.load(f)

# 2D data
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_20000_combined.json", 'r') as f:
    marr2d_20k = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_50000_combined.json", 'r') as f:
    marr2d_50k = json.load(f)
with open(f"{DATA_DIR}/ibm_torino_z5x5_dynamic_counts_20000_combined.json", 'r') as f:
    tor2d_20k = json.load(f)

datasets = [
    ("Marrakesh 20k 2D (27-bit)", marr2d_20k),
    ("Marrakesh 50k 2D (27-bit)", marr2d_50k),
    ("Torino 20k 2D (27-bit)", tor2d_20k),
    ("Marrakesh 20k 3D (127-bit)", marr3d_20k),
    ("Marrakesh 50k 3D (127-bit)", marr3d_50k),
    ("Torino 20k 3D (127-bit)", tor3d_20k),
]

print(f"\n{'Dataset':<35} {'Shots':>8} {'Unique':>8} {'%Unique':>10} {'Coll':>6} {'H_norm':>12} {'<W>/n':>10} {'eps':>10}")
print("-" * 100)

for label, d in datasets:
    counts = d['counts']
    total = sum(counts.values())
    n_unique = len(counts)
    coll = total - n_unique
    first_bs = list(counts.keys())[0]
    n_bits = len(first_bs.replace(' ', ''))

    H = shannon_entropy(counts, total)
    H_max = math.log2(total)
    H_norm = H / H_max

    bs_list = expand_counts(counts)
    weights = [hamming_weight(bs) for bs in bs_list]
    W_frac = np.mean(weights) / n_bits

    parities = [parity(bs) for bs in bs_list]
    p_even = parities.count(0) / len(parities)
    eps = 2*p_even - 1

    print(f"{label:<35} {total:>8,} {n_unique:>8,} {n_unique/total*100:>9.3f}% {coll:>6,} {H_norm:>12.8f} {W_frac:>10.6f} {eps:>+10.6f}")

print("\nNote: H_norm = H/log2(N_shots), where N_shots is total shots.")
print("Note: <W>/n is mean Hamming weight as fraction of bitstring length.")
print("Note: eps = P(even) - P(odd), parity bias of measurement outcomes.")
