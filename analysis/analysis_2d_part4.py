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

def wilson_interval(k, n, z=1.96):
    """Wilson score interval for binomial proportion."""
    p_hat = k / n
    denom = 1 + z**2 / n
    center = (p_hat + z**2 / (2*n)) / denom
    spread = z * math.sqrt((p_hat*(1-p_hat) + z**2/(4*n)) / n) / denom
    return (center - spread, center + spread)

# =====================================================================
# SECTION 6: DETAILED PER-QUBIT P(1) FOR 2D TORUS
# =====================================================================
print("=" * 80)
print("SECTION 6: DETAILED PER-QUBIT P(1) FOR 2D TORUS - CODE REGISTER")
print("=" * 80)

sep_2d = {
    "Marrakesh 20k": f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_20000.json",
    "Marrakesh 50k": f"{DATA_DIR}/ibm_marrakesh_z5x5_dynamic_counts_50000.json",
    "Torino 20k": f"{DATA_DIR}/ibm_torino_z5x5_dynamic_counts_20000.json",
}

all_p1 = {}

for name, path in sep_2d.items():
    with open(path, 'r') as f:
        data = json.load(f)

    code_counts = data['counts']['c']
    total = sum(code_counts.values())
    first_bs = list(code_counts.keys())[0]
    n_bits = len(first_bs)

    # Per-qubit P(1)
    p1 = np.zeros(n_bits)
    for bs, cnt in code_counts.items():
        for i, ch in enumerate(bs):
            if ch == '1':
                p1[i] += cnt
    p1 /= total

    all_p1[name] = (p1, total, n_bits)

    print(f"\n{'='*60}")
    print(f"  {name} - 25-qubit code register")
    print(f"{'='*60}")
    print(f"  Total shots: {total:,}")
    print(f"  Qubit  P(1)       95% CI             Status")
    print(f"  {'='*55}")

    for i in range(n_bits):
        k = int(p1[i] * total)
        lo, hi = wilson_interval(k, total)
        status = ""
        if p1[i] < 0.02:
            status = "*** DEAD ***"
        elif p1[i] < 0.05:
            status = "* LOW *"
        elif p1[i] > 0.45:
            status = "*** HOT ***"
        elif p1[i] > 0.4:
            status = "* HIGH *"
        print(f"  q{i:02d}    {p1[i]:.6f}   [{lo:.6f}, {hi:.6f}]   {status}")

    print(f"\n  Summary statistics:")
    print(f"    Mean P(1):        {np.mean(p1):.6f}")
    print(f"    Std P(1):         {np.std(p1):.6f}")
    print(f"    Min P(1):         {p1.min():.6f} (q{np.argmin(p1):02d})")
    print(f"    Max P(1):         {p1.max():.6f} (q{np.argmax(p1):02d})")
    print(f"    Median P(1):      {np.median(p1):.6f}")
    print(f"    IQR:              [{np.percentile(p1,25):.6f}, {np.percentile(p1,75):.6f}]")

    # Deviation from ideal (0.5)
    deviations = np.abs(p1 - 0.5)
    print(f"\n    Deviation from 0.5:")
    print(f"    Mean |P(1)-0.5|:  {np.mean(deviations):.6f}")
    print(f"    Fraction with P(1) in [0.4, 0.6]: {np.sum((p1>=0.4)&(p1<=0.6))/n_bits:.3f}")
    print(f"    Fraction with P(1) in [0.3, 0.7]: {np.sum((p1>=0.3)&(p1<=0.7))/n_bits:.3f}")
    print(f"    Fraction with P(1) < 0.1:         {np.sum(p1<0.1)/n_bits:.3f}")


# =====================================================================
# SECTION 7: 2D TORUS COLLISION EXCESS ANALYSIS
# =====================================================================
print("\n" + "=" * 80)
print("SECTION 7: COLLISION EXCESS - NOISE-INDUCED vs BIRTHDAY PARADOX")
print("=" * 80)

print("""
The birthday paradox predicts collisions for UNIFORM random sampling.
For N samples from a space of size D = 2^n:

  E[collisions] ~ N^2 / (2D)

For 2D torus (25-qubit code register, D = 2^25 = 33,554,432):
  - 20k shots: E[coll] ~ 20000^2 / (2 * 2^25) = 5.96
  - 50k shots: E[coll] ~ 50000^2 / (2 * 2^25) = 37.23

For 3D torus (125-qubit code register, D = 2^125 ~ 4.25e37):
  - 20k shots: E[coll] ~ 20000^2 / (2 * 2^125) ~ 4.7e-30 (effectively 0)
  - 50k shots: E[coll] ~ 50000^2 / (2 * 2^125) ~ 2.9e-29 (effectively 0)

KEY FINDING: The 2D torus shows MASSIVE collision excess over birthday paradox:

  Marrakesh 20k: 1681 observed vs 5.96 expected = 282x excess
  Marrakesh 50k: 4467 observed vs 37.23 expected = 120x excess
  Torino 20k:    149  observed vs 5.96 expected  = 25x excess

This is NOT explained by the birthday paradox. These are NOISE-INDUCED collisions.

The noise-biased distribution concentrates probability mass on a subset of
bitstrings, dramatically increasing the collision probability. With 25 qubits
and noise biases of p(1) ranging from 0.001 to 0.48, the effective Hilbert
space dimension is much smaller than 2^25.

For the 3D torus (125 qubits), the situation is different:
  - Even with noise, 125 qubits provide an astronomically larger space
  - The birthday paradox threshold for 50k samples from 2^125 is negligible
  - The Marrakesh 3D data shows 1 collision (20k) and 14 collisions (50k)
  - These are ALSO noise-induced (birthday paradox predicts ~0)
  - But the excess is far less dramatic because the space is so much larger

CRITICAL INSIGHT: The collision difference between 2D and 3D is primarily
a combinatorial space-size effect, NOT a signature of topological protection.
With 25 qubits, even modest noise concentration creates visible collisions.
With 125 qubits, the noise would need to collapse the distribution into
an incredibly small region of Hilbert space to produce collisions.
""")

# =====================================================================
# Effective dimension estimation from collision rate
# =====================================================================
print("Effective dimension estimation from collision rate:")
print("  If the output distribution were uniform over D_eff states,")
print("  then E[coll] = N^2 / (2 * D_eff), so D_eff = N^2 / (2 * coll)")
print()

collision_data = [
    ("Marrakesh 20k 2D (code reg)", 20000, 1681, 25),
    ("Marrakesh 50k 2D (code reg)", 50000, 4467, 25),
    ("Torino 20k 2D (code reg)", 20000, 149, 25),
    ("Marrakesh 20k 3D (verified)", 20000, 1, 125),
    ("Marrakesh 50k 3D (verified)", 50000, 14, 125),
]

for label, N, coll, n_bits in collision_data:
    if coll > 0:
        D_eff = N**2 / (2 * coll)
        log2_D_eff = math.log2(D_eff)
        print(f"  {label}:")
        print(f"    D_eff = {D_eff:.1f} = 2^{log2_D_eff:.2f}")
        print(f"    D_full = 2^{n_bits}")
        print(f"    D_eff / D_full = 2^{log2_D_eff - n_bits:.2f}")
        print()

# =====================================================================
# SECTION 8: DOES 2D DATA SUPPORT OR UNDERMINE TOPOLOGICAL CLAIM?
# =====================================================================
print("=" * 80)
print("SECTION 8: ASSESSMENT - DOES 2D DATA SUPPORT TOPOLOGICAL ERROR SUPPRESSION?")
print("=" * 80)

print("""
ANALYSIS SUMMARY:

The Z5x5 (2D torus) experiments provide an essential CONTROL against the Z5x5x5
(3D torus) experiments. The key question is whether the differences observed
between 2D and 3D are attributable to topological structure or merely to the
difference in system size (25 vs 125 qubits).

FINDING 1 - Collisions:
  2D: Marrakesh sees 1681/20000 (8.4%) collisions in 25-qubit code register
  3D: Marrakesh sees 1/20000 (0.005%) collisions in 125-qubit code register

  The birthday paradox for UNIFORM distributions predicts:
    2D (2^25): ~6 collisions for 20k shots
    3D (2^125): ~0 collisions for 20k shots

  Both 2D and 3D show collision EXCESS over the uniform birthday prediction,
  confirming that both systems are noisy. However, the absolute collision
  counts are dominated by the exponentially different space sizes. The 2D
  collision count does NOT imply worse quantum behavior per qubit.

FINDING 2 - Hamming Weight:
  2D Marrakesh: <W>/n = 0.253 (25 qubits, code register)
  2D Torino:    <W>/n = 0.337 (25 qubits, code register)
  3D Marrakesh: <W>/n = 0.081 (125 qubits, combined)
  3D Torino:    <W>/n = 0.152 (125 qubits, combined)
  Static:       <W>/n = 0.375 (125 qubits, code register)

  All values are significantly below the ideal 0.5, indicating noise bias
  toward |0>. The 3D combined data includes syndrome registers (m, n) which
  dilute the code register weight. The per-qubit bias is similar in character
  across both 2D and 3D.

FINDING 3 - Entropy:
  2D: H_norm = 0.996-1.000 (high but not perfect)
  3D: H_norm = 0.9999-1.0000 (higher, but space is larger)

  Both are near-maximal. The 3D data has higher normalized entropy because
  the 125-qubit space is so large that even a noise-concentrated distribution
  still occupies an effectively unique subset of 2^125.

FINDING 4 - Parity Bias:
  2D Marrakesh: eps = +0.008 +/- 0.007 (barely significant, 1.1 sigma)
  2D Torino:    eps = +0.013 +/- 0.007 (marginal, 1.8 sigma)
  3D Marrakesh: eps = -0.003 +/- 0.007 (not significant)
  3D Torino:    eps = -0.008 +/- 0.007 (marginal)

  No dataset shows statistically significant parity bias beyond ~2 sigma.
  This is consistent with both 2D and 3D systems being dominated by
  depolarizing noise rather than coherent error channels.

FINDING 5 - Dead/Hot Qubits:
  2D Marrakesh 20k: 1 dead qubit, 2 hot qubits (out of 25)
  2D Marrakesh 50k: 1 dead qubit, 2 hot qubits (out of 25)
  2D Torino 20k:    0 dead qubits, 8 hot qubits (out of 25)
  3D Marrakesh 20k: 29 dead qubits (out of 125, = 23.2%)
  3D Marrakesh 50k: 31 dead qubits (out of 125, = 24.8%)
  3D Torino 20k:    3 dead qubits (out of 125, = 2.4%)
  Static:           0 dead qubits (out of 125)

  The 3D Marrakesh data shows a MUCH higher fraction of dead qubits (24%)
  compared to the 2D Marrakesh data (4%). This is significant because more
  physical qubits means more opportunities for qubit failure, and the 3D
  circuit requires more entangling gates (higher depth).

CONCLUSION ON TOPOLOGICAL ERROR SUPPRESSION:

The 2D data NEITHER strongly supports NOR strongly undermines the topological
error suppression claim. Here is why:

1. The collision difference is primarily a space-size effect. The 2^25 vs 2^125
   exponential difference in combinatorial space overwhelms any noise-related
   signal. You CANNOT claim topological protection from collision data alone.

2. Both 2D and 3D show similar noise characteristics at the per-qubit level:
   heavy bias toward |0>, substantial spread in P(1) across qubits, and
   insignificant parity bias.

3. The 2D torus on a 5x5 lattice has the SAME Z2 x Z2 homological structure
   as the 3D torus on a 5x5x5 lattice - both have two independent topological
   cycles. The difference is the code distance and the number of physical qubits.

4. To make a legitimate topological error suppression claim, one would need to:
   a) Implement actual syndrome extraction and decoding
   b) Measure logical error rates at multiple code distances
   c) Show that logical error rate DECREASES with increasing code distance
   d) Extract an error suppression factor lambda

   The current data does NOT include syndrome decoding results. The measurements
   are of raw output distributions, not decoded logical outcomes.

5. The 2D data serves as a valuable baseline showing that the noise profile
   is qualitatively similar at both 25 and 125 qubits. The key ADDITIONAL
   information from the 3D data is the near-perfect uniqueness (100% for
   Torino, 99.995% for Marrakesh), which confirms that 125 physical qubits
   provide an enormous combinatorial space that noise alone cannot collapse.
   But this is a TRIVIAL observation about Hilbert space dimensionality,
   not evidence of topological error suppression.
""")
