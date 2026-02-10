#!/usr/bin/env python3
"""
COMPREHENSIVE DATA VERIFICATION AND FIGURE GENERATION
For publication-quality paper on hardware-software interference
All statistics computed directly from raw IBM Quantum bitstrings.
"""

import json
import numpy as np
from scipy import stats
from collections import Counter
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import os

# Set publication-quality defaults
plt.rcParams.update({
    'font.size': 10,
    'font.family': 'serif',
    'axes.labelsize': 11,
    'axes.titlesize': 12,
    'xtick.labelsize': 9,
    'ytick.labelsize': 9,
    'legend.fontsize': 9,
    'figure.figsize': (6.5, 4),
    'figure.dpi': 300,
    'savefig.dpi': 300,
    'savefig.bbox': 'tight'
})

DATA_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'data')
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'figures')

os.makedirs(OUTPUT_DIR, exist_ok=True)

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
    """Parse combined format: '125_data_bits SPACE m SPACE n'"""
    parts = bitstring.split(' ')
    if len(parts) == 3:
        data_bits = parts[0]
        m = int(parts[1])
        n = int(parts[2])
        return data_bits, m, n
    return bitstring, None, None

def hamming_weight(bitstring):
    """Count number of 1s in bitstring."""
    return sum(1 for c in bitstring if c == '1')

def compute_statistics(counts, n_data_bits=125, is_combined=False):
    """Compute all statistics from raw counts with full precision."""
    total_shots = sum(counts.values())
    n_unique = len(counts)
    
    # Initialize
    hamming_weights = []
    per_qubit_ones = np.zeros(n_data_bits)
    even_parity_count = 0
    m_ones = 0
    n_ones = 0
    has_ancilla = False
    
    for bitstring, count in counts.items():
        if is_combined:
            data_bits, m, n = parse_combined_bitstring(bitstring)
            if m is not None:
                has_ancilla = True
                m_ones += m * count
                n_ones += n * count
        else:
            data_bits = bitstring
        
        data_bits = data_bits[:n_data_bits]
        w = hamming_weight(data_bits)
        hamming_weights.extend([w] * count)
        
        for i, bit in enumerate(data_bits):
            if bit == '1':
                per_qubit_ones[i] += count
        
        if w % 2 == 0:
            even_parity_count += count
    
    hamming_weights = np.array(hamming_weights)
    per_qubit_p1 = per_qubit_ones / total_shots
    
    # Entropy
    probs = np.array([c / total_shots for c in counts.values()])
    H = -np.sum(probs * np.log2(probs + 1e-15))
    H_max = np.log2(n_unique) if n_unique > 1 else 1
    H_norm = H / H_max
    
    # Parity
    p_even = even_parity_count / total_shots
    epsilon = 2 * p_even - 1
    epsilon_stderr = 2 * np.sqrt(p_even * (1 - p_even) / total_shots)
    
    # Hamming weight
    W_mean = np.mean(hamming_weights)
    W_std = np.std(hamming_weights)
    W_stderr = W_std / np.sqrt(len(hamming_weights))
    W_frac = W_mean / n_data_bits
    W_frac_stderr = W_stderr / n_data_bits
    
    # Dead qubit analysis
    dead_mask = per_qubit_p1 < 0.02
    dead_indices = list(np.where(dead_mask)[0])
    
    # Syndrome marginals
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
        'H_bits': H,
        'H_max': H_max,
        'H_norm': H_norm,
        'epsilon': epsilon,
        'epsilon_stderr': epsilon_stderr,
        'W_mean_raw': W_mean,
        'W_std_raw': W_std,
        'W_stderr_raw': W_stderr,
        'W_mean_frac': W_frac,
        'W_stderr_frac': W_frac_stderr,
        'per_qubit_p1': per_qubit_p1,
        'n_dead': int(np.sum(dead_mask)),
        'dead_indices': [int(i) for i in dead_indices],
        'p_m': p_m,
        'p_m_stderr': p_m_stderr,
        'p_n': p_n,
        'p_n_stderr': p_n_stderr,
    }

def analyze_clustering(dead_indices, n_qubits=125):
    """Statistical analysis of spatial clustering."""
    if len(dead_indices) < 2:
        return None
    
    sorted_dead = sorted(dead_indices)
    n_dead = len(dead_indices)
    
    # Find runs
    runs = []
    current_run = [sorted_dead[0]]
    for i in range(1, len(sorted_dead)):
        if sorted_dead[i] == sorted_dead[i-1] + 1:
            current_run.append(sorted_dead[i])
        else:
            runs.append(current_run)
            current_run = [sorted_dead[i]]
    runs.append(current_run)
    
    run_lengths = [len(r) for r in runs]
    
    # Adjacent pairs test
    adjacent_pairs = sum(1 for i in range(len(sorted_dead)-1) 
                         if sorted_dead[i+1] == sorted_dead[i] + 1)
    p_adjacent = (n_dead - 1) / (n_qubits - 1)
    expected_adjacent = (n_dead - 1) * p_adjacent
    var_adjacent = (n_dead - 1) * p_adjacent * (1 - p_adjacent)
    std_adjacent = np.sqrt(var_adjacent)
    z_adjacent = (adjacent_pairs - expected_adjacent) / std_adjacent if std_adjacent > 0 else 0
    p_adjacent_test = 2 * (1 - stats.norm.cdf(abs(z_adjacent)))
    
    # Runs test
    n_alive = n_qubits - n_dead
    expected_runs = 2 * n_dead * n_alive / n_qubits + 1
    var_runs = 2 * n_dead * n_alive * (2*n_dead*n_alive - n_qubits) / (n_qubits**2 * (n_qubits - 1))
    std_runs = np.sqrt(max(var_runs, 0.01))
    z_runs = (len(runs) - expected_runs) / std_runs if std_runs > 0 else 0
    p_runs = 2 * (1 - stats.norm.cdf(abs(z_runs)))
    
    # Monte Carlo for max run
    n_simulations = 100000
    max_run_lengths = []
    for _ in range(n_simulations):
        random_dead = sorted(np.random.choice(n_qubits, n_dead, replace=False))
        max_run = 1
        current = 1
        for i in range(1, len(random_dead)):
            if random_dead[i] == random_dead[i-1] + 1:
                current += 1
                max_run = max(max_run, current)
            else:
                current = 1
        max_run_lengths.append(max_run)
    
    observed_max = max(run_lengths)
    p_max_run = np.mean([m >= observed_max for m in max_run_lengths])
    
    return {
        'runs': runs,
        'run_lengths': run_lengths,
        'max_run': observed_max,
        'adjacent_pairs': adjacent_pairs,
        'expected_adjacent': expected_adjacent,
        'z_adjacent': z_adjacent,
        'p_adjacent': p_adjacent_test,
        'n_runs': len(runs),
        'expected_runs': expected_runs,
        'z_runs': z_runs,
        'p_runs': p_runs,
        'p_max_run': p_max_run,
        'mc_mean_max': np.mean(max_run_lengths),
        'mc_99pct': np.percentile(max_run_lengths, 99)
    }

def create_figure1_perqubit(t_stats, m_stats):
    """Figure 1: Per-qubit P(1) comparison showing clustering."""
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(7, 6), sharex=True)
    
    x = np.arange(125)
    
    # Torino
    colors_t = ['red' if p < 0.02 else 'blue' for p in t_stats['per_qubit_p1']]
    ax1.bar(x, t_stats['per_qubit_p1'], color=colors_t, width=1, edgecolor='none', alpha=0.7)
    ax1.axhline(y=0.02, color='red', linestyle='--', linewidth=1, label='Dead threshold (0.02)')
    ax1.axhline(y=t_stats['W_mean_frac'], color='green', linestyle='-', linewidth=1.5, 
                label=f'Mean = {t_stats["W_mean_frac"]:.4f}')
    ax1.set_ylabel('$P(|1\\rangle)$')
    ax1.set_title('(a) ibm\\_torino (Heron r1, no TLS mitigation)')
    ax1.set_ylim(0, 0.6)
    ax1.legend(loc='upper right')
    
    # Mark dead qubits
    for idx in t_stats['dead_indices']:
        ax1.annotate(str(idx), (idx, t_stats['per_qubit_p1'][idx] + 0.03), 
                     ha='center', fontsize=7, color='red')
    
    # Marrakesh
    colors_m = ['red' if p < 0.02 else 'blue' for p in m_stats['per_qubit_p1']]
    ax2.bar(x, m_stats['per_qubit_p1'], color=colors_m, width=1, edgecolor='none', alpha=0.7)
    ax2.axhline(y=0.02, color='red', linestyle='--', linewidth=1, label='Dead threshold (0.02)')
    ax2.axhline(y=m_stats['W_mean_frac'], color='green', linestyle='-', linewidth=1.5,
                label=f'Mean = {m_stats["W_mean_frac"]:.4f}')
    ax2.set_ylabel('$P(|1\\rangle)$')
    ax2.set_xlabel('Qubit Index')
    ax2.set_title('(b) ibm\\_marrakesh (Heron r2, active TLS mitigation)')
    ax2.set_ylim(0, 0.6)
    ax2.legend(loc='upper right')
    
    # Highlight clustered regions on Marrakesh
    ax2.axvspan(70, 76, alpha=0.2, color='orange', label='Cluster 70-76')
    ax2.axvspan(93, 96, alpha=0.2, color='orange')
    ax2.axvspan(17, 19, alpha=0.15, color='yellow')
    ax2.axvspan(80, 82, alpha=0.15, color='yellow')
    
    plt.tight_layout()
    plt.savefig(f'{OUTPUT_DIR}/figure1_perqubit_p1.pdf')
    plt.savefig(f'{OUTPUT_DIR}/figure1_perqubit_p1.png')
    plt.close()
    print(f"Saved Figure 1: Per-qubit P(1) distribution")

def create_figure2_clustering(m_clustering):
    """Figure 2: Clustering analysis - run length distribution."""
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7, 3.5))
    
    # Run length histogram
    run_lengths = m_clustering['run_lengths']
    bins = np.arange(0.5, max(run_lengths) + 1.5, 1)
    ax1.hist(run_lengths, bins=bins, color='steelblue', edgecolor='black', alpha=0.7)
    ax1.axvline(x=m_clustering['max_run'], color='red', linestyle='--', linewidth=2,
                label=f'Max run = {m_clustering["max_run"]}')
    ax1.set_xlabel('Run Length (consecutive dead qubits)')
    ax1.set_ylabel('Count')
    ax1.set_title('(a) Distribution of Run Lengths')
    ax1.legend()
    
    # Monte Carlo comparison
    np.random.seed(42)
    mc_max_runs = []
    for _ in range(10000):
        random_dead = sorted(np.random.choice(125, 31, replace=False))
        max_run = 1
        current = 1
        for i in range(1, len(random_dead)):
            if random_dead[i] == random_dead[i-1] + 1:
                current += 1
                max_run = max(max_run, current)
            else:
                current = 1
        mc_max_runs.append(max_run)
    
    ax2.hist(mc_max_runs, bins=np.arange(0.5, 10.5, 1), color='gray', edgecolor='black', 
             alpha=0.5, density=True, label='Random (Monte Carlo)')
    ax2.axvline(x=m_clustering['max_run'], color='red', linestyle='--', linewidth=2,
                label=f'Observed = {m_clustering["max_run"]}\n($p$ = {m_clustering["p_max_run"]:.4f})')
    ax2.axvline(x=m_clustering['mc_99pct'], color='orange', linestyle=':', linewidth=2,
                label=f'99th percentile = {m_clustering["mc_99pct"]:.0f}')
    ax2.set_xlabel('Maximum Run Length')
    ax2.set_ylabel('Density')
    ax2.set_title('(b) Monte Carlo: Max Run Under Random Placement')
    ax2.legend(fontsize=8)
    
    plt.tight_layout()
    plt.savefig(f'{OUTPUT_DIR}/figure2_clustering.pdf')
    plt.savefig(f'{OUTPUT_DIR}/figure2_clustering.png')
    plt.close()
    print(f"Saved Figure 2: Clustering analysis")

def create_figure3_divergence(t_stats, m_stats):
    """Figure 3: Syndrome vs Hamming weight divergence."""
    fig, ax = plt.subplots(figsize=(6, 4))
    
    categories = ['P(m=1)', 'P(n=1)', 'Avg Syndrome', '$\\langle W \\rangle$']
    
    # Calculate relative changes
    pm_change = (t_stats['p_m'] - m_stats['p_m']) / t_stats['p_m'] * 100
    pn_change = (t_stats['p_n'] - m_stats['p_n']) / t_stats['p_n'] * 100
    avg_syn = (pm_change + pn_change) / 2
    w_change = (t_stats['W_mean_frac'] - m_stats['W_mean_frac']) / t_stats['W_mean_frac'] * 100
    
    changes = [pm_change, pn_change, avg_syn, w_change]
    colors = ['steelblue', 'steelblue', 'green', 'red']
    
    bars = ax.bar(categories, changes, color=colors, edgecolor='black', alpha=0.7)
    
    ax.axhline(y=0, color='black', linewidth=0.5)
    ax.set_ylabel('Relative Degradation (%)\n(Torino $\\to$ Marrakesh)')
    ax.set_title('Syndrome Detection vs Correction Success')
    
    # Add value labels
    for bar, val in zip(bars, changes):
        ax.annotate(f'{val:.1f}%', 
                   xy=(bar.get_x() + bar.get_width()/2, bar.get_height()),
                   xytext=(0, 3), textcoords='offset points',
                   ha='center', va='bottom', fontsize=10, fontweight='bold')
    
    # Add divergence ratio annotation
    ratio = w_change / avg_syn
    ax.annotate(f'Divergence ratio: {ratio:.1f}$\\times$', 
                xy=(0.95, 0.95), xycoords='axes fraction',
                ha='right', va='top', fontsize=11,
                bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.5))
    
    plt.tight_layout()
    plt.savefig(f'{OUTPUT_DIR}/figure3_divergence.pdf')
    plt.savefig(f'{OUTPUT_DIR}/figure3_divergence.png')
    plt.close()
    print(f"Saved Figure 3: Syndrome/Hamming divergence")

def create_figure4_dead_qubit_map(t_stats, m_stats):
    """Figure 4: 5x5x5 torus visualization with dead qubits marked."""
    fig = plt.figure(figsize=(8, 4))
    
    # Create two 5x5 grids showing z-slices
    # We'll show the 125 qubits as 5 layers of 5x5
    
    ax1 = fig.add_subplot(121)
    ax2 = fig.add_subplot(122)
    
    def plot_torus_slices(ax, dead_indices, title, color_dead='red'):
        # Create 5x5x5 grid visualization (flattened to show z-layers)
        # Qubit index = z*25 + y*5 + x
        
        dead_set = set(dead_indices)
        
        # Plot as 5 rows of 5x5 grids
        for z in range(5):
            for y in range(5):
                for x in range(5):
                    idx = z * 25 + y * 5 + x
                    plot_x = x + z * 6  # Separate z-layers horizontally
                    plot_y = 4 - y      # Flip y for visual
                    
                    if idx in dead_set:
                        ax.scatter(plot_x, plot_y, s=80, c=color_dead, marker='s', 
                                  edgecolor='black', linewidth=0.5)
                    else:
                        ax.scatter(plot_x, plot_y, s=40, c='lightgray', marker='o',
                                  edgecolor='gray', linewidth=0.3, alpha=0.5)
        
        # Add z-layer labels
        for z in range(5):
            ax.text(2 + z * 6, -0.8, f'z={z}', ha='center', fontsize=8)
        
        ax.set_xlim(-1, 30)
        ax.set_ylim(-1.5, 5)
        ax.set_aspect('equal')
        ax.axis('off')
        ax.set_title(title, fontsize=10)
    
    plot_torus_slices(ax1, t_stats['dead_indices'], 
                      f'Torino: {len(t_stats["dead_indices"])} dead qubits\n{t_stats["dead_indices"]}')
    plot_torus_slices(ax2, m_stats['dead_indices'],
                      f'Marrakesh: {len(m_stats["dead_indices"])} dead qubits')
    
    plt.suptitle('Dead Qubit Distribution on 5×5×5 Torus (red = dead, gray = healthy)', 
                 fontsize=11, y=1.02)
    plt.tight_layout()
    plt.savefig(f'{OUTPUT_DIR}/figure4_dead_qubit_map.pdf')
    plt.savefig(f'{OUTPUT_DIR}/figure4_dead_qubit_map.png')
    plt.close()
    print(f"Saved Figure 4: Dead qubit map")

def create_figure5_feedback_timing():
    """Figure 5: Schematic of feedback cycle timing and interference."""
    fig, ax = plt.subplots(figsize=(7, 4))
    
    # Timeline
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5)
    
    # Circuit feedback timeline (top)
    y_circuit = 4
    ax.annotate('', xy=(9, y_circuit), xytext=(1, y_circuit),
                arrowprops=dict(arrowstyle='->', color='blue', lw=2))
    
    # Operations on circuit timeline
    ops = [(1, 'M'), (2.5, 'Reset'), (4, 'H'), (5.5, 'if(m)X'), (7.5, 'CZ')]
    for x, label in ops:
        ax.plot(x, y_circuit, 'bo', markersize=10)
        ax.text(x, y_circuit + 0.3, label, ha='center', fontsize=9, color='blue')
    
    ax.text(0.5, y_circuit, 'Circuit\nFeedback', ha='right', va='center', fontsize=9, color='blue')
    
    # Hardware mitigation timeline (bottom)
    y_hw = 2
    ax.annotate('', xy=(9, y_hw), xytext=(1, y_hw),
                arrowprops=dict(arrowstyle='->', color='red', lw=2))
    
    # DD pulses (continuous)
    for x in np.arange(1.5, 9, 0.8):
        ax.plot([x, x], [y_hw - 0.2, y_hw + 0.2], 'r-', lw=2)
    
    # Frequency tuning events
    ax.plot([3.5, 6.5], [y_hw - 0.4, y_hw - 0.4], 'r-', lw=3)
    ax.text(5, y_hw - 0.7, 'Freq. Tuning', ha='center', fontsize=8, color='red')
    
    ax.text(0.5, y_hw, 'Hardware\nTLS Mit.', ha='right', va='center', fontsize=9, color='red')
    
    # Interference region
    ax.axvspan(4, 6, alpha=0.3, color='orange')
    ax.text(5, 3, 'INTERFERENCE\nWINDOW', ha='center', va='center', fontsize=10, 
            fontweight='bold', color='darkorange')
    
    # Labels
    ax.text(5, 0.5, 'Competing control signals during correction window\ncause desynchronization', 
            ha='center', fontsize=9, style='italic')
    
    ax.axis('off')
    ax.set_title('Feedback Cycle Timing: Circuit vs Hardware Control', fontsize=11)
    
    plt.tight_layout()
    plt.savefig(f'{OUTPUT_DIR}/figure5_timing_schematic.pdf')
    plt.savefig(f'{OUTPUT_DIR}/figure5_timing_schematic.png')
    plt.close()
    print(f"Saved Figure 5: Timing schematic")

def generate_verification_report(all_stats, clustering):
    """Generate comprehensive verification report."""
    report = []
    report.append("="*80)
    report.append("COMPREHENSIVE DATA VERIFICATION REPORT")
    report.append("All statistics computed directly from raw IBM Quantum bitstrings")
    report.append("="*80)
    
    for name, stats in all_stats.items():
        report.append(f"\n{'-'*40}")
        report.append(f"{name.upper()}")
        report.append(f"{'-'*40}")
        report.append(f"Total shots:      {stats['total_shots']:,}")
        report.append(f"Unique outcomes:  {stats['n_unique']:,} ({stats['unique_pct']:.6f}%)")
        report.append(f"H_norm:           {stats['H_norm']:.6f}")
        report.append(f"<W> (fraction):   {stats['W_mean_frac']:.6f} ± {stats['W_stderr_frac']:.6f}")
        report.append(f"<W> (raw bits):   {stats['W_mean_raw']:.4f} ± {stats['W_stderr_raw']:.4f}")
        report.append(f"ε (parity bias):  {stats['epsilon']:+.6f} ± {stats['epsilon_stderr']:.6f}")
        if stats['p_m'] is not None:
            report.append(f"P(m=1):           {stats['p_m']:.6f} ± {stats['p_m_stderr']:.6f}")
            report.append(f"P(n=1):           {stats['p_n']:.6f} ± {stats['p_n_stderr']:.6f}")
        report.append(f"Dead qubits:      {stats['n_dead']} ({100*stats['n_dead']/125:.1f}%)")
        report.append(f"Dead indices:     {stats['dead_indices']}")
    
    if clustering:
        report.append(f"\n{'='*80}")
        report.append("CLUSTERING ANALYSIS (Marrakesh 50k)")
        report.append(f"{'='*80}")
        report.append(f"Number of runs:        {clustering['n_runs']}")
        report.append(f"Run lengths:           {clustering['run_lengths']}")
        report.append(f"Maximum run:           {clustering['max_run']}")
        report.append(f"Adjacent pairs:        {clustering['adjacent_pairs']} (expected: {clustering['expected_adjacent']:.2f})")
        report.append(f"Z-score (adjacent):    {clustering['z_adjacent']:.2f}")
        report.append(f"P-value (adjacent):    {clustering['p_adjacent']:.2e}")
        report.append(f"Z-score (runs):        {clustering['z_runs']:.2f}")
        report.append(f"P-value (runs):        {clustering['p_runs']:.2e}")
        report.append(f"P(max_run >= {clustering['max_run']}):  {clustering['p_max_run']:.6f}")
        report.append(f"MC mean max run:       {clustering['mc_mean_max']:.2f}")
        report.append(f"MC 99th percentile:    {clustering['mc_99pct']:.0f}")
    
    report_text = '\n'.join(report)
    
    with open(os.path.join(DATA_DIR, 'verification_report.txt'), 'w') as f:
        f.write(report_text)
    
    print(report_text)
    return report_text

def main():
    print("="*80)
    print("COMPREHENSIVE DATA VERIFICATION AND FIGURE GENERATION")
    print("="*80)
    
    # Load and compute statistics
    print("\nLoading raw data files...")
    
    t50_counts = load_counts("ibm_torino_dynamic_counts_50000_combined.json")
    m50_counts = load_counts("ibm_marrakesh_dynamic_counts_50000_combined.json")
    t20_counts = load_counts("ibm_torino_dynamic_counts_20000_combined.json")
    m20_counts = load_counts("ibm_marrakesh_dynamic_counts_20000_combined.json")
    
    print("Computing statistics from raw bitstrings...")
    
    t50_stats = compute_statistics(t50_counts, is_combined=True)
    m50_stats = compute_statistics(m50_counts, is_combined=True)
    t20_stats = compute_statistics(t20_counts, is_combined=True)
    m20_stats = compute_statistics(m20_counts, is_combined=True)
    
    all_stats = {
        'torino_20k': t20_stats,
        'torino_50k': t50_stats,
        'marrakesh_20k': m20_stats,
        'marrakesh_50k': m50_stats
    }
    
    # Clustering analysis
    print("\nPerforming clustering analysis...")
    m_clustering = analyze_clustering(m50_stats['dead_indices'])
    t_clustering = analyze_clustering(t50_stats['dead_indices'])
    
    # Generate verification report
    print("\n" + "="*80)
    generate_verification_report(all_stats, m_clustering)
    
    # Create figures
    print("\n" + "="*80)
    print("GENERATING PUBLICATION FIGURES")
    print("="*80)
    
    create_figure1_perqubit(t50_stats, m50_stats)
    create_figure2_clustering(m_clustering)
    create_figure3_divergence(t50_stats, m50_stats)
    create_figure4_dead_qubit_map(t50_stats, m50_stats)
    create_figure5_feedback_timing()
    
    # Save all statistics as JSON
    def convert_numpy(obj):
        if isinstance(obj, np.ndarray):
            return obj.tolist()
        elif isinstance(obj, (np.integer, np.int64)):
            return int(obj)
        elif isinstance(obj, (np.floating, np.float64)):
            return float(obj)
        elif isinstance(obj, dict):
            return {k: convert_numpy(v) for k, v in obj.items()}
        elif isinstance(obj, list):
            return [convert_numpy(i) for i in obj]
        return obj
    
    output_data = {
        'statistics': convert_numpy(all_stats),
        'clustering_marrakesh': convert_numpy({k: v for k, v in m_clustering.items() if k != 'runs'}),
        'clustering_marrakesh_runs': [[int(x) for x in r] for r in m_clustering['runs']]
    }
    
    with open(os.path.join(DATA_DIR, 'verified_statistics.json'), 'w') as f:
        json.dump(output_data, f, indent=2)
    
    print(f"\nAll figures saved to {OUTPUT_DIR}/")
    print(f"Verification data saved to {DATA_DIR}")
    print("\nDone.")

if __name__ == "__main__":
    main()
