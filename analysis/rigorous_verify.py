#!/usr/bin/env python3
"""
RIGOROUS RAW DATA VERIFICATION
All statistics computed directly from raw IBM Quantum bitstrings.
NO reliance on summaries. Direct verification of every claim.
"""

import json
import numpy as np
from collections import Counter, defaultdict
import os

DATA_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'data')

def load_counts(filename):
    """Load and extract counts from JSON file."""
    filepath = os.path.join(DATA_DIR, filename)
    with open(filepath, 'r') as f:
        data = json.load(f)
    
    if 'counts' in data and 'c' in data['counts']:
        return data['counts']['c']
    elif 'counts' in data:
        return data['counts']
    return data

def parse_combined_bitstring(bitstring):
    """
    Parse combined format: '125_data_bits SPACE m SPACE n'
    Returns (data_bits, m, n) where m,n are ancilla measurement outcomes.
    """
    parts = bitstring.split(' ')
    if len(parts) == 3:
        data_bits = parts[0]
        m = int(parts[1])
        n = int(parts[2])
        return data_bits, m, n
    else:
        # Not combined format - just data bits
        return bitstring, None, None

def hamming_weight(bitstring):
    """Count number of 1s in bitstring."""
    return sum(1 for c in bitstring if c == '1')

def compute_all_statistics(counts, n_data_bits=125, is_combined=False):
    """
    Compute ALL statistics from raw counts.
    Returns comprehensive dict of verified statistics.
    """
    total_shots = sum(counts.values())
    n_unique = len(counts)
    
    # Initialize accumulators
    hamming_weights = []
    per_qubit_ones = np.zeros(n_data_bits)
    even_parity_count = 0
    
    # Ancilla tracking (for combined data)
    m_ones = 0
    n_ones = 0
    has_ancilla = False
    
    # Process every single bitstring
    for bitstring, count in counts.items():
        if is_combined:
            data_bits, m, n = parse_combined_bitstring(bitstring)
            if m is not None:
                has_ancilla = True
                m_ones += m * count
                n_ones += n * count
        else:
            data_bits = bitstring
        
        # Ensure we only look at data bits
        data_bits = data_bits[:n_data_bits]
        
        # Hamming weight
        w = hamming_weight(data_bits)
        hamming_weights.extend([w] * count)
        
        # Per-qubit P(1)
        for i, bit in enumerate(data_bits):
            if bit == '1':
                per_qubit_ones[i] += count
        
        # Parity
        if w % 2 == 0:
            even_parity_count += count
    
    # Convert to numpy for stats
    hamming_weights = np.array(hamming_weights)
    per_qubit_p1 = per_qubit_ones / total_shots
    
    # Compute entropy
    probs = np.array([c / total_shots for c in counts.values()])
    H = -np.sum(probs * np.log2(probs + 1e-15))  # Add small epsilon for numerical stability
    H_max = np.log2(n_unique) if n_unique > 1 else 1
    H_norm = H / H_max
    
    # Parity bias
    p_even = even_parity_count / total_shots
    epsilon = 2 * p_even - 1
    epsilon_stderr = 2 * np.sqrt(p_even * (1 - p_even) / total_shots)
    
    # Hamming weight stats
    W_mean = np.mean(hamming_weights)
    W_std = np.std(hamming_weights)
    W_stderr = W_std / np.sqrt(len(hamming_weights))
    W_frac = W_mean / n_data_bits
    W_frac_stderr = W_stderr / n_data_bits
    
    # Per-qubit health analysis
    dead_mask = per_qubit_p1 < 0.02
    very_low_mask = per_qubit_p1 < 0.05
    low_mask = per_qubit_p1 < 0.10
    healthy_mask = per_qubit_p1 > 0.30
    
    n_dead = int(np.sum(dead_mask))
    n_very_low = int(np.sum(very_low_mask))
    n_low = int(np.sum(low_mask))
    n_healthy = int(np.sum(healthy_mask))
    
    dead_indices = list(np.where(dead_mask)[0])
    
    # Ancilla marginals
    if has_ancilla:
        p_m = m_ones / total_shots
        p_n = n_ones / total_shots
        p_m_stderr = np.sqrt(p_m * (1 - p_m) / total_shots)
        p_n_stderr = np.sqrt(p_n * (1 - p_n) / total_shots)
    else:
        p_m = p_n = p_m_stderr = p_n_stderr = None
    
    return {
        'total_shots': total_shots,
        'n_unique': n_unique,
        'unique_pct': 100 * n_unique / total_shots,
        'collision_count': total_shots - n_unique,
        
        'H_bits': H,
        'H_max': H_max,
        'H_norm': H_norm,
        
        'epsilon': epsilon,
        'epsilon_stderr': epsilon_stderr,
        'p_even': p_even,
        
        'W_mean_raw': W_mean,
        'W_std_raw': W_std,
        'W_stderr_raw': W_stderr,
        'W_mean_frac': W_frac,
        'W_stderr_frac': W_frac_stderr,
        
        'per_qubit_p1': per_qubit_p1,
        'per_qubit_min': np.min(per_qubit_p1),
        'per_qubit_max': np.max(per_qubit_p1),
        'per_qubit_mean': np.mean(per_qubit_p1),
        'per_qubit_median': np.median(per_qubit_p1),
        'per_qubit_std': np.std(per_qubit_p1),
        
        'n_dead': n_dead,
        'pct_dead': 100 * n_dead / n_data_bits,
        'n_very_low': n_very_low,
        'pct_very_low': 100 * n_very_low / n_data_bits,
        'n_low': n_low,
        'pct_low': 100 * n_low / n_data_bits,
        'n_healthy': n_healthy,
        'pct_healthy': 100 * n_healthy / n_data_bits,
        'dead_indices': dead_indices,
        
        'p_m': p_m,
        'p_m_stderr': p_m_stderr,
        'p_n': p_n,
        'p_n_stderr': p_n_stderr,
    }

def print_analysis(stats, label):
    """Pretty print analysis results."""
    print(f"\n{'='*75}")
    print(f" {label}")
    print(f"{'='*75}")
    
    print(f"\n[BASIC COUNTS]")
    print(f"  Total shots:        {stats['total_shots']:,}")
    print(f"  Unique outcomes:    {stats['n_unique']:,}")
    print(f"  Unique percentage:  {stats['unique_pct']:.6f}%")
    print(f"  Collisions:         {stats['collision_count']:,}")
    
    print(f"\n[ENTROPY]")
    print(f"  H (bits):           {stats['H_bits']:.6f}")
    print(f"  H_max (bits):       {stats['H_max']:.6f}")
    print(f"  H_norm:             {stats['H_norm']:.6f}")
    
    print(f"\n[PARITY]")
    print(f"  P(even):            {stats['p_even']:.6f}")
    print(f"  ε (2*P(even)-1):    {stats['epsilon']:+.6f} ± {stats['epsilon_stderr']:.6f}")
    
    print(f"\n[HAMMING WEIGHT]")
    print(f"  <W> (raw):          {stats['W_mean_raw']:.4f} ± {stats['W_stderr_raw']:.4f} bits")
    print(f"  <W> (fraction):     {stats['W_mean_frac']:.6f} ± {stats['W_stderr_frac']:.6f}")
    print(f"  σ_W (raw):          {stats['W_std_raw']:.4f} bits")
    
    print(f"\n[PER-QUBIT P(1) DISTRIBUTION]")
    print(f"  Min:                {stats['per_qubit_min']:.6f}")
    print(f"  Max:                {stats['per_qubit_max']:.6f}")
    print(f"  Mean:               {stats['per_qubit_mean']:.6f}")
    print(f"  Median:             {stats['per_qubit_median']:.6f}")
    print(f"  Std:                {stats['per_qubit_std']:.6f}")
    
    print(f"\n[QUBIT HEALTH]")
    print(f"  Dead (P1 < 0.02):     {stats['n_dead']:3d} / 125 ({stats['pct_dead']:.1f}%)")
    print(f"  Very low (P1 < 0.05): {stats['n_very_low']:3d} / 125 ({stats['pct_very_low']:.1f}%)")
    print(f"  Low (P1 < 0.10):      {stats['n_low']:3d} / 125 ({stats['pct_low']:.1f}%)")
    print(f"  Healthy (P1 > 0.30):  {stats['n_healthy']:3d} / 125 ({stats['pct_healthy']:.1f}%)")
    
    if stats['dead_indices']:
        print(f"  Dead qubit indices:   {stats['dead_indices']}")
    
    if stats['p_m'] is not None:
        print(f"\n[SYNDROME MARGINALS]")
        print(f"  P(m=1):             {stats['p_m']:.6f} ± {stats['p_m_stderr']:.6f}")
        print(f"  P(n=1):             {stats['p_n']:.6f} ± {stats['p_n_stderr']:.6f}")

def compare_backends(t_stats, m_stats):
    """Compare Torino vs Marrakesh statistics."""
    print(f"\n{'='*75}")
    print(f" BACKEND COMPARISON: Torino vs Marrakesh")
    print(f"{'='*75}")
    
    print(f"\n{'Metric':<30} {'Torino':>18} {'Marrakesh':>18} {'Difference':>15}")
    print("-" * 85)
    
    metrics = [
        ('Unique %', 'unique_pct', '.4f'),
        ('H_norm', 'H_norm', '.6f'),
        ('ε (parity bias)', 'epsilon', '+.6f'),
        ('<W> (fraction)', 'W_mean_frac', '.6f'),
        ('<W> (raw bits)', 'W_mean_raw', '.2f'),
        ('Dead qubits', 'n_dead', 'd'),
        ('Dead %', 'pct_dead', '.1f'),
        ('P(m=1)', 'p_m', '.4f'),
        ('P(n=1)', 'p_n', '.4f'),
    ]
    
    for label, key, fmt in metrics:
        t_val = t_stats[key]
        m_val = m_stats[key]
        
        if t_val is None or m_val is None:
            continue
        
        diff = m_val - t_val
        t_str = f"{t_val:{fmt}}"
        m_str = f"{m_val:{fmt}}"
        
        if isinstance(t_val, int):
            d_str = f"{diff:+d}"
        else:
            d_str = f"{diff:+.6f}"
        
        print(f"{label:<30} {t_str:>18} {m_str:>18} {d_str:>15}")
    
    # Key ratios
    print(f"\n[KEY RATIOS]")
    w_ratio = m_stats['W_mean_frac'] / t_stats['W_mean_frac']
    print(f"  Hamming weight ratio (M/T):   {w_ratio:.4f}")
    print(f"  Hamming weight deficit:       {100*(1-w_ratio):.1f}%")
    
    dead_ratio = m_stats['n_dead'] / max(t_stats['n_dead'], 1)
    print(f"  Dead qubit ratio (M/T):       {dead_ratio:.1f}x")

def analyze_qubit_patterns(t_stats, m_stats):
    """Analyze whether dead qubits are systematic or random."""
    print(f"\n{'='*75}")
    print(f" DEAD QUBIT PATTERN ANALYSIS")
    print(f"{'='*75}")
    
    t_dead = set(t_stats['dead_indices'])
    m_dead = set(m_stats['dead_indices'])
    
    overlap = t_dead & m_dead
    t_only = t_dead - m_dead
    m_only = m_dead - t_dead
    
    print(f"\n[DEAD QUBIT OVERLAP]")
    print(f"  Torino dead qubits:           {len(t_dead)}")
    print(f"  Marrakesh dead qubits:        {len(m_dead)}")
    print(f"  Overlap (dead in both):       {len(overlap)}")
    print(f"  Torino-only dead:             {len(t_only)}")
    print(f"  Marrakesh-only dead:          {len(m_only)}")
    
    if overlap:
        print(f"  Shared dead indices:          {sorted(overlap)}")
    if t_only:
        print(f"  Torino-only indices:          {sorted(t_only)}")
    if m_only:
        print(f"  Marrakesh-only indices:       {sorted(m_only)}")
    
    # Check for clustering in Marrakesh
    if m_dead:
        m_list = sorted(m_dead)
        gaps = [m_list[i+1] - m_list[i] for i in range(len(m_list)-1)]
        if gaps:
            print(f"\n[MARRAKESH DEAD QUBIT SPACING]")
            print(f"  Dead indices: {m_list}")
            print(f"  Gaps between: {gaps}")
            print(f"  Mean gap: {np.mean(gaps):.1f}")
            print(f"  Min gap: {min(gaps)}")
            print(f"  Max gap: {max(gaps)}")
            
            # Expected mean gap for random distribution
            expected_gap = 125 / (len(m_dead) + 1)
            print(f"  Expected random gap: {expected_gap:.1f}")
            
            # Chi-squared test for uniformity would go here
            # For now, visual assessment

def verify_key_claims():
    """Verify specific claims made in the paper."""
    print(f"\n{'='*75}")
    print(f" VERIFICATION OF KEY PAPER CLAIMS")
    print(f"{'='*75}")
    
    # Load all datasets
    print("\nLoading raw data files...")
    
    t50_data = load_counts("ibm_torino_dynamic_counts_50000.json")
    t50_comb = load_counts("ibm_torino_dynamic_counts_50000_combined.json")
    m50_data = load_counts("ibm_marrakesh_dynamic_counts_50000.json")
    m50_comb = load_counts("ibm_marrakesh_dynamic_counts_50000_combined.json")
    
    t20_data = load_counts("ibm_torino_dynamic_counts_20000.json")
    t20_comb = load_counts("ibm_torino_dynamic_counts_20000_combined.json")
    m20_data = load_counts("ibm_marrakesh_dynamic_counts_20000.json")
    m20_comb = load_counts("ibm_marrakesh_dynamic_counts_20000_combined.json")
    
    print("Computing statistics from raw bitstrings...")
    
    # Compute all stats
    t50_stats = compute_all_statistics(t50_comb, is_combined=True)
    m50_stats = compute_all_statistics(m50_comb, is_combined=True)
    t20_stats = compute_all_statistics(t20_comb, is_combined=True)
    m20_stats = compute_all_statistics(m20_comb, is_combined=True)
    
    # Print individual analyses
    print_analysis(t50_stats, "TORINO 50k shots (combined)")
    print_analysis(m50_stats, "MARRAKESH 50k shots (combined)")
    print_analysis(t20_stats, "TORINO 20k shots (combined)")
    print_analysis(m20_stats, "MARRAKESH 20k shots (combined)")
    
    # Backend comparison
    compare_backends(t50_stats, m50_stats)
    
    # Pattern analysis
    analyze_qubit_patterns(t50_stats, m50_stats)
    
    # CLAIM VERIFICATION
    print(f"\n{'='*75}")
    print(f" SPECIFIC CLAIM VERIFICATION")
    print(f"{'='*75}")
    
    claims = []
    
    # Claim 1: Perfect entropy on Torino
    claim1 = t50_stats['H_norm'] > 0.9999
    claims.append(("Torino H_norm = 1.000000", claim1, t50_stats['H_norm']))
    
    # Claim 2: 100% unique outcomes on Torino
    claim2 = t50_stats['unique_pct'] == 100.0
    claims.append(("Torino 100% unique outcomes", claim2, t50_stats['unique_pct']))
    
    # Claim 3: Balanced parity (|ε| < 0.01)
    claim3 = abs(t50_stats['epsilon']) < 0.01
    claims.append(("Torino |ε| < 0.01", claim3, t50_stats['epsilon']))
    
    # Claim 4: Marrakesh has more dead qubits
    claim4 = m50_stats['n_dead'] > t50_stats['n_dead']
    claims.append(("Marrakesh more dead qubits", claim4, 
                   f"{m50_stats['n_dead']} vs {t50_stats['n_dead']}"))
    
    # Claim 5: Marrakesh Hamming weight significantly lower
    claim5 = m50_stats['W_mean_frac'] < t50_stats['W_mean_frac'] * 0.5
    claims.append(("Marrakesh W < 50% of Torino W", claim5,
                   f"{m50_stats['W_mean_frac']:.4f} vs {t50_stats['W_mean_frac']:.4f}"))
    
    # Claim 6: Syndrome rates similar between backends
    if t50_stats['p_m'] and m50_stats['p_m']:
        pm_diff = abs(m50_stats['p_m'] - t50_stats['p_m'])
        claim6 = pm_diff < 0.05  # Within 5%
        claims.append(("P(m=1) similar (diff < 5%)", claim6,
                       f"diff = {pm_diff:.4f}"))
    
    print("\n[CLAIM VERIFICATION RESULTS]")
    for claim_text, verified, value in claims:
        status = "✓ VERIFIED" if verified else "✗ NOT VERIFIED"
        print(f"  {status}: {claim_text}")
        print(f"            Actual value: {value}")
    
    # Return stats for further analysis
    return {
        'torino_50k': t50_stats,
        'marrakesh_50k': m50_stats,
        'torino_20k': t20_stats,
        'marrakesh_20k': m20_stats,
    }

def generate_verification_table(all_stats):
    """Generate final verification table for paper."""
    print(f"\n{'='*75}")
    print(f" FINAL VERIFICATION TABLE (FOR PAPER)")
    print(f"{'='*75}")
    
    print("\n[3D TORUS - 125 DATA QUBITS]")
    print(f"{'Dataset':<20} {'Shots':>8} {'Unique%':>10} {'H_norm':>10} {'<W>':>8} {'ε':>10} {'P(m=1)':>8} {'Dead%':>8}")
    print("-" * 95)
    
    for label, key in [("Torino 20k", "torino_20k"), ("Torino 50k", "torino_50k"),
                       ("Marrakesh 20k", "marrakesh_20k"), ("Marrakesh 50k", "marrakesh_50k")]:
        s = all_stats[key]
        pm = f"{s['p_m']:.4f}" if s['p_m'] else "N/A"
        print(f"{label:<20} {s['total_shots']:>8,} {s['unique_pct']:>9.4f}% {s['H_norm']:>10.6f} "
              f"{s['W_mean_frac']:>8.4f} {s['epsilon']:>+10.4f} {pm:>8} {s['pct_dead']:>7.1f}%")

def main():
    print("="*75)
    print(" RIGOROUS RAW DATA VERIFICATION")
    print(" All statistics computed directly from IBM Quantum bitstrings")
    print(" No reliance on pre-computed summaries")
    print("="*75)
    
    all_stats = verify_key_claims()
    generate_verification_table(all_stats)
    
    # Save verified stats to JSON for paper writing
    import json
    
    # Convert numpy types to Python native for JSON serialization
    def convert_for_json(obj):
        if isinstance(obj, np.ndarray):
            return obj.tolist()
        elif isinstance(obj, (np.integer, np.int64)):
            return int(obj)
        elif isinstance(obj, (np.floating, np.float64)):
            return float(obj)
        elif isinstance(obj, dict):
            return {k: convert_for_json(v) for k, v in obj.items()}
        elif isinstance(obj, list):
            return [convert_for_json(i) for i in obj]
        return obj
    
    json_stats = convert_for_json(all_stats)
    
    with open(os.path.join(DATA_DIR, 'verified_statistics.json'), 'w') as f:
        json.dump(json_stats, f, indent=2)
    
    print(f"\n\nVerified statistics saved to {os.path.join(DATA_DIR, 'verified_statistics.json')}")
    print("\nDone.")

if __name__ == "__main__":
    main()
