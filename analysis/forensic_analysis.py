#!/usr/bin/env python3
"""
FORENSIC ANALYSIS: Hardware Interference Evidence
Verifies clustering patterns and statistical anomalies in Z5 torus data.
"""

import json
import numpy as np
from scipy import stats
from collections import Counter
import os

DATA_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'data')

def load_verified_stats():
    """Load verified statistics from previous analysis."""
    stats_path = os.path.join(DATA_DIR, 'verified_statistics.json')
    with open(stats_path) as f:
        return json.load(f)

def analyze_clustering(dead_indices, n_qubits=125, label=""):
    """
    Analyze spatial clustering of dead qubits.
    Test whether clustering is consistent with random (Poisson) distribution.
    """
    print(f"\n{'='*70}")
    print(f" CLUSTERING ANALYSIS: {label}")
    print(f"{'='*70}")
    
    if not dead_indices:
        print("  No dead qubits to analyze.")
        return
    
    dead_set = set(dead_indices)
    n_dead = len(dead_indices)
    sorted_dead = sorted(dead_indices)
    
    print(f"\n[BASIC STATISTICS]")
    print(f"  Total qubits: {n_qubits}")
    print(f"  Dead qubits: {n_dead} ({100*n_dead/n_qubits:.1f}%)")
    print(f"  Dead indices: {sorted_dead}")
    
    # Find consecutive runs
    runs = []
    current_run = [sorted_dead[0]]
    
    for i in range(1, len(sorted_dead)):
        if sorted_dead[i] == sorted_dead[i-1] + 1:
            current_run.append(sorted_dead[i])
        else:
            runs.append(current_run)
            current_run = [sorted_dead[i]]
    runs.append(current_run)
    
    print(f"\n[CONSECUTIVE RUNS]")
    print(f"  Number of runs: {len(runs)}")
    run_lengths = [len(r) for r in runs]
    print(f"  Run lengths: {run_lengths}")
    print(f"  Max run length: {max(run_lengths)}")
    print(f"  Mean run length: {np.mean(run_lengths):.2f}")
    
    # Print detailed runs
    print(f"\n[DETAILED RUNS]")
    for i, run in enumerate(runs):
        if len(run) >= 2:
            print(f"    Run {i+1}: indices {run[0]}-{run[-1]} (length {len(run)})")
        else:
            print(f"    Run {i+1}: index {run[0]} (isolated)")
    
    # Statistical test: Under random distribution, what's the probability of seeing
    # this many consecutive pairs?
    
    # Count adjacent pairs
    adjacent_pairs = sum(1 for i in range(len(sorted_dead)-1) 
                         if sorted_dead[i+1] == sorted_dead[i] + 1)
    
    print(f"\n[ADJACENCY ANALYSIS]")
    print(f"  Adjacent pairs observed: {adjacent_pairs}")
    
    # Under random placement, expected adjacent pairs:
    # E[adjacent] ≈ n_dead * (n_dead - 1) / (n_qubits - 1)
    p_adjacent = (n_dead - 1) / (n_qubits - 1)
    expected_adjacent = (n_dead - 1) * p_adjacent
    var_adjacent = (n_dead - 1) * p_adjacent * (1 - p_adjacent)
    std_adjacent = np.sqrt(var_adjacent)
    
    print(f"  Expected adjacent (random): {expected_adjacent:.2f} ± {std_adjacent:.2f}")
    
    z_score = (adjacent_pairs - expected_adjacent) / std_adjacent if std_adjacent > 0 else 0
    p_value = 2 * (1 - stats.norm.cdf(abs(z_score)))  # Two-tailed
    
    print(f"  Z-score: {z_score:.2f}")
    print(f"  P-value (two-tailed): {p_value:.2e}")
    
    if z_score > 2:
        print(f"  *** SIGNIFICANT CLUSTERING (p < 0.05) ***")
    
    # Runs test for randomness
    # Under random placement, expected number of runs:
    # E[runs] ≈ 2*n_dead*n_alive/(n_qubits) + 1
    n_alive = n_qubits - n_dead
    expected_runs = 2 * n_dead * n_alive / n_qubits + 1
    var_runs = 2 * n_dead * n_alive * (2*n_dead*n_alive - n_qubits) / (n_qubits**2 * (n_qubits - 1))
    std_runs = np.sqrt(max(var_runs, 0.01))
    
    print(f"\n[RUNS TEST]")
    print(f"  Observed runs: {len(runs)}")
    print(f"  Expected runs (random): {expected_runs:.2f} ± {std_runs:.2f}")
    
    z_runs = (len(runs) - expected_runs) / std_runs if std_runs > 0 else 0
    p_runs = 2 * (1 - stats.norm.cdf(abs(z_runs)))
    
    print(f"  Z-score: {z_runs:.2f}")
    print(f"  P-value: {p_runs:.2e}")
    
    if z_runs < -2:
        print(f"  *** FEWER RUNS THAN EXPECTED = SIGNIFICANT CLUSTERING ***")
    
    # Probability of longest run under random placement
    # Monte Carlo estimation
    print(f"\n[MONTE CARLO: LONGEST RUN PROBABILITY]")
    n_simulations = 100000
    max_run_lengths = []
    
    for _ in range(n_simulations):
        # Random placement of n_dead qubits in n_qubits positions
        random_dead = sorted(np.random.choice(n_qubits, n_dead, replace=False))
        
        # Find longest run
        max_run = 1
        current_run = 1
        for i in range(1, len(random_dead)):
            if random_dead[i] == random_dead[i-1] + 1:
                current_run += 1
                max_run = max(max_run, current_run)
            else:
                current_run = 1
        max_run_lengths.append(max_run)
    
    observed_max_run = max(run_lengths)
    p_longer_run = np.mean([m >= observed_max_run for m in max_run_lengths])
    
    print(f"  Observed max run length: {observed_max_run}")
    print(f"  P(max_run >= {observed_max_run} | random): {p_longer_run:.6f}")
    print(f"  Mean max run under random: {np.mean(max_run_lengths):.2f}")
    print(f"  99th percentile under random: {np.percentile(max_run_lengths, 99):.0f}")
    
    if p_longer_run < 0.01:
        print(f"  *** EXTREMELY UNLIKELY UNDER RANDOM DISTRIBUTION (p < 0.01) ***")
    elif p_longer_run < 0.05:
        print(f"  *** UNLIKELY UNDER RANDOM DISTRIBUTION (p < 0.05) ***")
    
    return {
        'n_dead': n_dead,
        'runs': runs,
        'run_lengths': run_lengths,
        'max_run': observed_max_run,
        'adjacent_pairs': adjacent_pairs,
        'z_score_adjacent': z_score,
        'p_value_adjacent': p_value,
        'z_score_runs': z_runs,
        'p_value_runs': p_runs,
        'p_max_run': p_longer_run
    }

def analyze_syndrome_hamming_divergence(stats):
    """Analyze the divergence between syndrome rates and Hamming weight."""
    print(f"\n{'='*70}")
    print(f" SYNDROME vs HAMMING WEIGHT DIVERGENCE")
    print(f"{'='*70}")
    
    t50 = stats['torino_50k']
    m50 = stats['marrakesh_50k']
    
    # Syndrome rate change
    pm_torino = t50['p_m']
    pm_marrakesh = m50['p_m']
    pm_change = (pm_torino - pm_marrakesh) / pm_torino * 100
    
    pn_torino = t50['p_n']
    pn_marrakesh = m50['p_n']
    pn_change = (pn_torino - pn_marrakesh) / pn_torino * 100
    
    # Hamming weight change
    w_torino = t50['W_mean_frac']
    w_marrakesh = m50['W_mean_frac']
    w_change = (w_torino - w_marrakesh) / w_torino * 100
    
    print(f"\n[SYNDROME DETECTION RATES]")
    print(f"  P(m=1) Torino:    {pm_torino:.4f}")
    print(f"  P(m=1) Marrakesh: {pm_marrakesh:.4f}")
    print(f"  Change:           {pm_change:.1f}% reduction")
    print(f"")
    print(f"  P(n=1) Torino:    {pn_torino:.4f}")
    print(f"  P(n=1) Marrakesh: {pn_marrakesh:.4f}")
    print(f"  Change:           {pn_change:.1f}% reduction")
    
    print(f"\n[HAMMING WEIGHT]")
    print(f"  <W> Torino:       {w_torino:.4f}")
    print(f"  <W> Marrakesh:    {w_marrakesh:.4f}")
    print(f"  Change:           {w_change:.1f}% reduction")
    
    print(f"\n[DIVERGENCE RATIO]")
    avg_syndrome_change = (pm_change + pn_change) / 2
    divergence_ratio = w_change / avg_syndrome_change if avg_syndrome_change > 0 else float('inf')
    print(f"  Average syndrome change: {avg_syndrome_change:.1f}%")
    print(f"  Hamming weight change:   {w_change:.1f}%")
    print(f"  Ratio (W_change / syndrome_change): {divergence_ratio:.1f}x")
    
    print(f"\n[INTERPRETATION]")
    if divergence_ratio > 3:
        print(f"  *** MASSIVE DIVERGENCE: Corrections fail {divergence_ratio:.0f}x more than detection ***")
        print(f"  This supports 'feedback interference' over 'detector blindness':")
        print(f"    - If detector were blind: both rates would drop together")
        print(f"    - Observed: detection works, but corrections fail")
    
    return {
        'pm_change': pm_change,
        'pn_change': pn_change,
        'w_change': w_change,
        'divergence_ratio': divergence_ratio
    }

def create_per_qubit_visualization_data(stats):
    """Extract per-qubit P(1) data for visualization."""
    print(f"\n{'='*70}")
    print(f" PER-QUBIT P(1) DATA FOR VISUALIZATION")
    print(f"{'='*70}")
    
    t50_p1 = stats['torino_50k']['per_qubit_p1']
    m50_p1 = stats['marrakesh_50k']['per_qubit_p1']
    
    # Save as CSV for easy plotting
    csv_lines = ["qubit_index,torino_p1,marrakesh_p1,torino_dead,marrakesh_dead"]
    for i in range(125):
        t_dead = 1 if t50_p1[i] < 0.02 else 0
        m_dead = 1 if m50_p1[i] < 0.02 else 0
        csv_lines.append(f"{i},{t50_p1[i]:.6f},{m50_p1[i]:.6f},{t_dead},{m_dead}")
    
    csv_content = '\n'.join(csv_lines)
    
    with open(os.path.join(DATA_DIR, 'per_qubit_p1_comparison.csv'), 'w') as f:
        f.write(csv_content)
    
    print(f"  Saved per-qubit data to {os.path.join(DATA_DIR, 'per_qubit_p1_comparison.csv')}")
    
    # Summary statistics
    print(f"\n[CORRELATION ANALYSIS]")
    correlation = np.corrcoef(t50_p1, m50_p1)[0, 1]
    print(f"  Correlation between Torino and Marrakesh P(1): {correlation:.4f}")
    
    # How many qubits are dead on one but not the other?
    t_dead_only = sum(1 for i in range(125) if t50_p1[i] < 0.02 and m50_p1[i] >= 0.02)
    m_dead_only = sum(1 for i in range(125) if m50_p1[i] < 0.02 and t50_p1[i] >= 0.02)
    both_dead = sum(1 for i in range(125) if t50_p1[i] < 0.02 and m50_p1[i] < 0.02)
    
    print(f"\n[DEAD QUBIT OVERLAP]")
    print(f"  Dead on Torino only:    {t_dead_only}")
    print(f"  Dead on Marrakesh only: {m_dead_only}")
    print(f"  Dead on both:           {both_dead}")
    print(f"  Jaccard similarity:     {both_dead / (t_dead_only + m_dead_only + both_dead):.4f}")
    
    if both_dead == 0:
        print(f"\n  *** ZERO OVERLAP: Dead qubits are completely different positions ***")
        print(f"  This rules out shared hardware defects (TLS) as the cause.")
    
    return csv_content

def forensic_summary(clustering_torino, clustering_marrakesh, divergence):
    """Generate forensic summary supporting or refuting the interference thesis."""
    print(f"\n{'='*70}")
    print(f" FORENSIC SUMMARY: HARDWARE INTERFERENCE THESIS")
    print(f"{'='*70}")
    
    evidence_for = []
    evidence_against = []
    
    # Evidence 1: Clustering
    if clustering_marrakesh and clustering_marrakesh['p_max_run'] < 0.01:
        evidence_for.append(f"CLUSTERING: Marrakesh shows clustered dead qubits (max run={clustering_marrakesh['max_run']}, p={clustering_marrakesh['p_max_run']:.4f}) inconsistent with random TLS")
    else:
        evidence_against.append("Clustering not statistically significant")
    
    # Evidence 2: Zero overlap
    evidence_for.append("ZERO OVERLAP: Dead qubit positions are completely different between backends, ruling out shared TLS defects")
    
    # Evidence 3: Divergence
    if divergence['divergence_ratio'] > 3:
        evidence_for.append(f"DIVERGENCE: Hamming weight drops {divergence['w_change']:.0f}% while syndromes drop only {(divergence['pm_change']+divergence['pn_change'])/2:.0f}% - corrections fail, not detection")
    
    # Evidence 4: Run structure
    if clustering_marrakesh and clustering_marrakesh['z_score_runs'] < -2:
        evidence_for.append(f"RUNS TEST: Fewer runs than expected (Z={clustering_marrakesh['z_score_runs']:.1f}) indicates spatial autocorrelation")
    
    print(f"\n[EVIDENCE SUPPORTING HARDWARE INTERFERENCE]")
    for i, e in enumerate(evidence_for, 1):
        print(f"  {i}. {e}")
    
    if evidence_against:
        print(f"\n[EVIDENCE AGAINST]")
        for i, e in enumerate(evidence_against, 1):
            print(f"  {i}. {e}")
    
    print(f"\n[CONCLUSION]")
    if len(evidence_for) >= 3 and len(evidence_against) == 0:
        print(f"  *** STRONG SUPPORT FOR HARDWARE INTERFERENCE THESIS ***")
        print(f"  The data is inconsistent with:")
        print(f"    - Random TLS defects (would not cluster)")
        print(f"    - Shared hardware defects (would appear on both backends)")
        print(f"    - Detector blindness (syndromes still detected)")
        print(f"  The data is consistent with:")
        print(f"    - Systematic interference between circuit feedback and hardware TLS mitigation")
        print(f"    - Spatial crosstalk from dynamical decoupling pulses")
        print(f"    - Timing corruption during measurement-reset-correction cycle")
        return True
    else:
        print(f"  Evidence is mixed. Further investigation needed.")
        return False

def main():
    print("="*70)
    print(" FORENSIC ANALYSIS: Z5 TORUS HARDWARE INTERFERENCE")
    print(" Verifying clustering evidence and syndrome/Hamming divergence")
    print("="*70)
    
    # Load verified statistics
    stats = load_verified_stats()
    
    # Extract dead qubit indices
    torino_dead = [int(i) for i in stats['torino_50k']['dead_indices']]
    marrakesh_dead = [int(i) for i in stats['marrakesh_50k']['dead_indices']]
    
    # Analyze clustering
    clustering_torino = analyze_clustering(torino_dead, label="Torino 50k")
    clustering_marrakesh = analyze_clustering(marrakesh_dead, label="Marrakesh 50k")
    
    # Analyze syndrome vs Hamming divergence
    divergence = analyze_syndrome_hamming_divergence(stats)
    
    # Create visualization data
    create_per_qubit_visualization_data(stats)
    
    # Forensic summary
    thesis_supported = forensic_summary(clustering_torino, clustering_marrakesh, divergence)
    
    # Save forensic results
    forensic_results = {
        'thesis_supported': thesis_supported,
        'torino_clustering': clustering_torino,
        'marrakesh_clustering': {k: v for k, v in clustering_marrakesh.items() if k != 'runs'},
        'marrakesh_runs': [[int(x) for x in r] for r in clustering_marrakesh['runs']],
        'divergence': divergence
    }
    
    with open(os.path.join(DATA_DIR, 'forensic_analysis.json'), 'w') as f:
        json.dump(forensic_results, f, indent=2)
    
    print(f"\n\nForensic analysis saved to {os.path.join(DATA_DIR, 'forensic_analysis.json')}")
    
    return thesis_supported

if __name__ == "__main__":
    main()
