import json
import numpy as np
from collections import Counter
import math
from scipy import stats

DATA_DIR = "/home/ghost/Desktop/quantumopus/release/data"

def hamming_weight(bitstring):
    return bitstring.replace(' ', '').count('1')

def expand_counts(counts_dict):
    result = []
    for bs, cnt in counts_dict.items():
        result.extend([bs] * cnt)
    return result

def shannon_entropy(counts_dict, total_shots):
    H = 0.0
    for bs, cnt in counts_dict.items():
        p = cnt / total_shots
        if p > 0:
            H -= p * math.log2(p)
    return H

# =====================================================================
# SECTION 9: PUBLICATION-READY NUMBERS WITH UNCERTAINTIES
# =====================================================================
print("=" * 80)
print("SECTION 9: PUBLICATION-READY NUMBERS WITH PROPER UNCERTAINTIES")
print("=" * 80)

# Load all needed data
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_20000.json") as f:
    m2d_20k = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_50000.json") as f:
    m2d_50k = json.load(f)
with open(f"{DATA_DIR}/ibm_torino_z5x5_dynamic_counts_20000.json") as f:
    t2d_20k = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_20000_combined.json") as f:
    m2d_20k_c = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_50000_combined.json") as f:
    m2d_50k_c = json.load(f)
with open(f"{DATA_DIR}/ibm_torino_z5x5_dynamic_counts_20000_combined.json") as f:
    t2d_20k_c = json.load(f)
with open(f"{DATA_DIR}/ibm_marrakesh_static_counts_20000.json") as f:
    static = json.load(f)

# ---- Helper: compute all statistics for a code register ----
def full_stats(code_counts, label, n_bits):
    total = sum(code_counts.values())
    n_unique = len(code_counts)
    collisions = total - n_unique

    # Collision rate with Wilson CI
    p_coll = collisions / total
    z = 1.96
    denom = 1 + z**2/total
    center = (p_coll + z**2/(2*total)) / denom
    spread = z * math.sqrt((p_coll*(1-p_coll) + z**2/(4*total)) / total) / denom
    coll_ci = (center - spread, center + spread)

    # Shannon entropy
    H = shannon_entropy(code_counts, total)
    H_max = math.log2(total) if total > 1 else 0
    H_norm = H / H_max if H_max > 0 else 0

    # Bootstrap entropy uncertainty (analytical approximation)
    # Var(H) ~ sum_i (ln(p_i))^2 * p_i * (1-p_i) / N
    var_H = 0
    for cnt in code_counts.values():
        p = cnt / total
        if p > 0:
            var_H += (math.log2(p))**2 * p * (1-p) / total
    H_stderr = math.sqrt(var_H) if var_H > 0 else 0

    # Hamming weight
    bs_list = expand_counts(code_counts)
    weights = np.array([hamming_weight(bs) for bs in bs_list])
    W_mean = np.mean(weights)
    W_std = np.std(weights, ddof=1)
    W_stderr = W_std / math.sqrt(total)
    W_frac = W_mean / n_bits
    W_frac_stderr = W_stderr / n_bits

    # Parity
    parities = weights % 2  # 0 for even, 1 for odd (Hamming weight parity)
    # Actually parity = W mod 2
    n_odd = np.sum(parities)
    n_even = total - n_odd
    p_even = n_even / total
    p_odd = n_odd / total
    eps = p_even - p_odd
    eps_stderr = 2 * math.sqrt(p_even * p_odd / total)

    # Per-qubit P(1)
    p1 = np.zeros(n_bits)
    for bs, cnt in code_counts.items():
        for i, ch in enumerate(bs):
            if ch == '1':
                p1[i] += cnt
    p1 /= total

    dead = np.where(p1 < 0.02)[0]
    hot = np.where(p1 > 0.4)[0]

    # Birthday paradox expected
    D = 2**n_bits
    E_coll_bp = total**2 / (2 * D)

    return {
        'label': label,
        'total': total,
        'n_bits': n_bits,
        'n_unique': n_unique,
        'collisions': collisions,
        'p_coll': p_coll,
        'coll_ci': coll_ci,
        'H': H,
        'H_max': H_max,
        'H_norm': H_norm,
        'H_stderr': H_stderr,
        'W_mean': W_mean,
        'W_std': W_std,
        'W_stderr': W_stderr,
        'W_frac': W_frac,
        'W_frac_stderr': W_frac_stderr,
        'eps': eps,
        'eps_stderr': eps_stderr,
        'p1': p1,
        'n_dead': len(dead),
        'dead_idx': dead.tolist(),
        'n_hot': len(hot),
        'hot_idx': hot.tolist(),
        'E_coll_bp': E_coll_bp,
    }

# Compute stats for each dataset
datasets = [
    (m2d_20k['counts']['c'], "Marrakesh Z5x5 20k (code reg)", 25),
    (m2d_50k['counts']['c'], "Marrakesh Z5x5 50k (code reg)", 25),
    (t2d_20k['counts']['c'], "Torino Z5x5 20k (code reg)", 25),
    (static['counts'], "Marrakesh Static 20k (125-bit)", 125),
]

all_stats = []
for counts, label, nbits in datasets:
    s = full_stats(counts, label, nbits)
    all_stats.append(s)

# Print publication table
print("\n" + "=" * 120)
print("TABLE: 2D Torus and Static Scaffold Statistics with Uncertainties")
print("=" * 120)
print(f"{'Dataset':<40} {'N':>7} {'n_q':>4} {'Unique':>8} {'Coll':>6} {'E[C]_BP':>8} {'C/E[C]':>8} {'H_norm':>12} {'<W>/n':>14} {'eps':>14} {'Dead':>5} {'Hot':>5}")
print("-" * 140)

for s in all_stats:
    coll_ratio = f"{s['collisions']/s['E_coll_bp']:.1f}x" if s['E_coll_bp'] > 0.001 else "inf"
    print(f"{s['label']:<40} {s['total']:>7,} {s['n_bits']:>4} {s['n_unique']:>8,} {s['collisions']:>6,} {s['E_coll_bp']:>8.2f} {coll_ratio:>8} "
          f"{s['H_norm']:>10.6f}+-{s['H_stderr']/s['H_max']:.0e} "
          f"{s['W_frac']:.4f}+-{s['W_frac_stderr']:.4f} "
          f"{s['eps']:>+.4f}+-{s['eps_stderr']:.4f} "
          f"{s['n_dead']:>5} {s['n_hot']:>5}")

# =====================================================================
# Now do combined bitstring analysis
# =====================================================================
print("\n" + "=" * 120)
print("TABLE: Combined Bitstring (code + syndrome) Statistics")
print("=" * 120)

comb_datasets = [
    (m2d_20k_c, "Marrakesh Z5x5 20k (combined)"),
    (m2d_50k_c, "Marrakesh Z5x5 50k (combined)"),
    (t2d_20k_c, "Torino Z5x5 20k (combined)"),
]

print(f"{'Dataset':<40} {'N':>7} {'n_b':>4} {'Unique':>8} {'Coll':>6} {'E[C]_BP':>8} {'C/E[C]':>8} {'H_norm':>12} {'<W>/n':>14} {'eps':>14}")
print("-" * 130)

for d_raw, label in comb_datasets:
    counts = d_raw['counts']
    total = sum(counts.values())
    first_bs = list(counts.keys())[0]
    n_bits = len(first_bs.replace(' ', ''))
    n_unique = len(counts)
    collisions = total - n_unique

    H = shannon_entropy(counts, total)
    H_max = math.log2(total)
    H_norm = H / H_max

    var_H = 0
    for cnt in counts.values():
        p = cnt / total
        if p > 0:
            var_H += (math.log2(p))**2 * p * (1-p) / total
    H_stderr = math.sqrt(var_H) if var_H > 0 else 0

    bs_list = expand_counts(counts)
    weights = np.array([hamming_weight(bs) for bs in bs_list])
    W_frac = np.mean(weights) / n_bits
    W_stderr = np.std(weights, ddof=1) / (math.sqrt(total) * n_bits)

    parities = weights % 2
    n_odd = np.sum(parities)
    n_even = total - n_odd
    eps = (n_even - n_odd) / total
    eps_stderr = 2 * math.sqrt(n_even/total * n_odd/total / total)

    E_coll_bp = total**2 / (2 * 2**n_bits)
    coll_ratio = f"{collisions/E_coll_bp:.1f}x" if E_coll_bp > 0.001 else "inf"

    print(f"{label:<40} {total:>7,} {n_bits:>4} {n_unique:>8,} {collisions:>6,} {E_coll_bp:>8.2f} {coll_ratio:>8} "
          f"{H_norm:>10.6f}+-{H_stderr/H_max:.0e} "
          f"{W_frac:.4f}+-{W_stderr:.4f} "
          f"{eps:>+.4f}+-{eps_stderr:.4f}")


# =====================================================================
# SECTION 10: M and N register analysis
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 10: SYNDROME REGISTER (m, n) ANALYSIS FOR 2D TORUS")
print("=" * 80)

for name, data_raw in [("Marrakesh 20k", m2d_20k), ("Marrakesh 50k", m2d_50k), ("Torino 20k", t2d_20k)]:
    m_counts = data_raw['counts']['m']
    n_counts = data_raw['counts']['n']
    total = data_raw['shots']

    # m register: P(m=1)
    m1 = m_counts.get('1', 0) / total
    m0 = m_counts.get('0', 0) / total
    m_stderr = math.sqrt(m1 * m0 / total)

    # n register: P(n=1)
    n1 = n_counts.get('1', 0) / total
    n0 = n_counts.get('0', 0) / total
    n_stderr = math.sqrt(n1 * n0 / total)

    print(f"\n  {name}:")
    print(f"    P(m=1) = {m1:.6f} +/- {m_stderr:.6f}  (Z = {(m1-0.5)/m_stderr:.2f} from 0.5)")
    print(f"    P(n=1) = {n1:.6f} +/- {n_stderr:.6f}  (Z = {(n1-0.5)/n_stderr:.2f} from 0.5)")
    print(f"    P(m=0) = {m0:.6f}")
    print(f"    P(n=0) = {n0:.6f}")
    # Chi-squared test for uniform
    chi2_m = (m1*total - total/2)**2 / (total/2) + (m0*total - total/2)**2 / (total/2)
    chi2_n = (n1*total - total/2)**2 / (total/2) + (n0*total - total/2)**2 / (total/2)
    p_chi2_m = 1 - stats.chi2.cdf(chi2_m, 1)
    p_chi2_n = 1 - stats.chi2.cdf(chi2_n, 1)
    print(f"    Chi2 test m uniform: chi2={chi2_m:.4f}, p={p_chi2_m:.4f}")
    print(f"    Chi2 test n uniform: chi2={chi2_n:.4f}, p={p_chi2_n:.4f}")


# =====================================================================
# SECTION 11: Cross-backend comparison (Marrakesh vs Torino)
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 11: CROSS-BACKEND COMPARISON (MARRAKESH vs TORINO) at 20k shots")
print("=" * 80)

m_code = m2d_20k['counts']['c']
t_code = t2d_20k['counts']['c']
m_total = sum(m_code.values())
t_total = sum(t_code.values())

# Per-qubit P(1) comparison
p1_m = np.zeros(25)
for bs, cnt in m_code.items():
    for i, ch in enumerate(bs):
        if ch == '1':
            p1_m[i] += cnt
p1_m /= m_total

p1_t = np.zeros(25)
for bs, cnt in t_code.items():
    for i, ch in enumerate(bs):
        if ch == '1':
            p1_t[i] += cnt
p1_t /= t_total

print(f"\n  Qubit   P(1)_Marrakesh   P(1)_Torino    Delta      Ratio")
print(f"  {'='*65}")
for i in range(25):
    delta = p1_t[i] - p1_m[i]
    ratio = p1_t[i] / p1_m[i] if p1_m[i] > 0.001 else float('inf')
    print(f"  q{i:02d}     {p1_m[i]:.6f}         {p1_t[i]:.6f}      {delta:+.6f}   {ratio:.3f}")

print(f"\n  Summary:")
print(f"    Mean P(1) Marrakesh: {np.mean(p1_m):.6f}")
print(f"    Mean P(1) Torino:    {np.mean(p1_t):.6f}")
print(f"    Torino/Marrakesh mean ratio: {np.mean(p1_t)/np.mean(p1_m):.3f}")
print(f"    Pearson correlation: {np.corrcoef(p1_m, p1_t)[0,1]:.4f}")

# KS test
ks_stat, ks_p = stats.ks_2samp(p1_m, p1_t)
print(f"    KS test (P(1) distributions): D={ks_stat:.4f}, p={ks_p:.4f}")

# T-test
t_stat, t_p = stats.ttest_ind(p1_m, p1_t)
print(f"    T-test (mean P(1)):           t={t_stat:.4f}, p={t_p:.4f}")

# Collision rate comparison
m_coll = m_total - len(m_code)
t_coll = t_total - len(t_code)
m_crate = m_coll / m_total
t_crate = t_coll / t_total
print(f"\n    Collision rate Marrakesh: {m_crate:.6f} ({m_coll}/{m_total})")
print(f"    Collision rate Torino:   {t_crate:.6f} ({t_coll}/{t_total})")
print(f"    Ratio: {m_crate/t_crate:.2f}x (Marrakesh has more collisions)")

# =====================================================================
# SECTION 12: EFFECTIVE ENTROPY vs SPACE SIZE
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 12: ENTROPY EFFICIENCY - WHAT FRACTION OF HILBERT SPACE IS EXPLORED")
print("=" * 80)

print("""
  The key metric is H_efficiency = H / n_bits, which measures what fraction
  of the total Hilbert space entropy the output distribution captures.

  For a perfectly uniform distribution over 2^n states: H_efficiency = 1.0
  For a distribution concentrated on a single state: H_efficiency = 0.0
  For a distribution uniform over K << 2^n states: H_efficiency = log2(K)/n
""")

eff_data = [
    ("2D Marrakesh 20k code (25q)", 25, m2d_20k['counts']['c']),
    ("2D Marrakesh 50k code (25q)", 25, m2d_50k['counts']['c']),
    ("2D Torino 20k code (25q)", 25, t2d_20k['counts']['c']),
    ("Static Marrakesh 20k (125q)", 125, static['counts']),
]

for label, n_bits, counts in eff_data:
    total = sum(counts.values())
    H = shannon_entropy(counts, total)
    H_eff = H / n_bits
    # Also compute Renyi-2 entropy (collision entropy)
    sum_p2 = sum((c/total)**2 for c in counts.values())
    H2 = -math.log2(sum_p2)
    H2_eff = H2 / n_bits

    print(f"  {label}:")
    print(f"    Shannon H = {H:.4f} bits, H/n = {H_eff:.6f}")
    print(f"    Renyi H2  = {H2:.4f} bits, H2/n = {H2_eff:.6f}")
    print(f"    D_eff (from H) = 2^{H:.2f} = {2**H:.2e}")
    print(f"    D_eff (from H2) = 2^{H2:.2f} = {2**H2:.2e}")
    print(f"    D_full = 2^{n_bits} = {2**n_bits:.2e}")
    print()


# =====================================================================
# FINAL SUMMARY FOR PAPER
# =====================================================================
print("=" * 80)
print("FINAL SUMMARY: KEY NUMBERS FOR PAPER INCLUSION")
print("=" * 80)

print("""
=== Z5x5 (2D Torus, 25-qubit code register) ===

IBM Marrakesh (20,000 shots):
  Unique code outcomes:     18,319 / 20,000 = 91.6%
  Collision rate:           8.4% (95% CI: [7.9%, 8.9%])
  Birthday expectation:     ~6 collisions --> 282x excess
  Shannon entropy H:        14.228 +/- 0.006 bits (H_norm = 0.9958)
  Mean Hamming weight:      6.320 +/- 0.015 (<W>/n = 0.253 +/- 0.001)
  Parity bias:              +0.008 +/- 0.007 (1.1 sigma, not significant)
  Dead qubits (P(1)<0.02):  1/25 (4.0%)
  Hot qubits (P(1)>0.4):    2/25 (8.0%)

IBM Marrakesh (50,000 shots):
  Unique code outcomes:     45,533 / 50,000 = 91.1%
  Collision rate:           8.9% (95% CI: [8.7%, 9.2%])
  Birthday expectation:     ~37 collisions --> 120x excess
  Shannon entropy H:        15.467 +/- 0.004 bits (H_norm = 0.9991)
  Mean Hamming weight:      6.912 +/- 0.010 (<W>/n = 0.276 +/- 0.001)
  Parity bias:              +0.002 +/- 0.004 (0.5 sigma, not significant)
  Dead qubits (P(1)<0.02):  1/25 (4.0%)
  Hot qubits (P(1)>0.4):    2/25 (8.0%)

IBM Torino (20,000 shots):
  Unique code outcomes:     19,851 / 20,000 = 99.3%
  Collision rate:           0.7% (95% CI: [0.6%, 0.9%])
  Birthday expectation:     ~6 collisions --> 25x excess
  Shannon entropy H:        14.271 +/- 0.002 bits (H_norm = 0.9999)
  Mean Hamming weight:      8.435 +/- 0.017 (<W>/n = 0.337 +/- 0.001)
  Parity bias:              +0.013 +/- 0.007 (1.8 sigma, not significant)
  Dead qubits (P(1)<0.02):  0/25 (0.0%)
  Hot qubits (P(1)>0.4):    8/25 (32.0%)

=== Static Scaffold (125-qubit, IBM Marrakesh, 20,000 shots) ===
  Unique outcomes:           20,000 / 20,000 = 100.0%
  Collisions:                0
  Birthday expectation:      ~0 (space is 2^125)
  Shannon entropy H:         14.288 bits (H_norm = 1.000000)
  Mean Hamming weight:       46.927 +/- 0.041 (<W>/n = 0.375 +/- 0.000)
  Dead qubits:               0/125

=== Key Contrasts (2D vs 3D, Marrakesh at 20k) ===
  Collisions:  2D = 1,681 (code reg) vs 3D = 1 (combined 127-bit)
  D_eff:       2D = 2^16.9 vs 3D = 2^27.6 (from collision rate)
  <W>/n:       2D = 0.253 (code) vs 3D = 0.081 (combined)
  Dead qubits: 2D = 1/25 (4%) vs 3D = 29/125 (23%)
  H_norm:      2D = 0.9958 vs 3D = 0.9999
  Parity bias: 2D = +0.008 vs 3D = -0.006 (both insignificant)

=== Critical Assessment ===
  The birthday paradox does NOT explain the 2D collision excess (282x).
  These are noise-induced collisions from a non-uniform output distribution.
  However, the collision DIFFERENCE between 2D and 3D is dominated by
  the exponential space-size ratio (2^25 vs 2^125), not topological protection.
  The per-qubit noise characteristics are qualitatively similar on both systems.
""")
