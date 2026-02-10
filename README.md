# Z5 Topological Error Suppression

**On the Statistical Behavior of a Deep Toroidal Circuit Executed Beyond Coherence Limits**

*Joseph Daniel Burke III, Independent Researcher*

## Summary

This repository contains the complete experimental data, analysis code, and publication materials for a study of a 5x5x5 toroidal graph-state circuit executed on IBM Heron quantum processors. The circuit comprises 1,584 layers, 11,900 CZ gates, and 350 measurement-reset-feedback cycles, running 5-10x beyond the hardware coherence limit.

### Key findings

1. **Statistical invariants**: The circuit produces near-perfect normalized Shannon entropy (H_norm = 1.000000 on Torino; 0.999990 on Marrakesh at 50k shots) with balanced parity (|epsilon| < 0.006) despite severely degraded Hamming weight (~0.15 on Torino, ~0.075 on Marrakesh).

2. **Dead qubit clustering**: On Marrakesh, dead qubits form spatially clustered runs of 7 and 4 consecutive indices (p < 0.004 under random placement), suggesting systematic hardware-software interaction rather than random noise.

3. **Run-to-run instability**: Dead qubit positions show zero overlap between Torino runs and only partial overlap (Jaccard = 0.25) between Marrakesh runs, ruling out static hardware defects.

4. **Detection-correction divergence**: Final-cycle syndrome detection degrades by only 6.7% between backends while cumulative Hamming weight degrades by 51.4%, a 7.7x ratio.

5. **2D vs 3D comparison**: A 2D torus variant (5x5, 25 qubits) shows 4,467 code-register collisions at 50k shots versus 65 for the 3D circuit, a difference attributable primarily to Hilbert-space dimension (2^25 vs 2^125) rather than topological protection.

### Honest assessment

The bulk statistics (high entropy, balanced parity, low Hamming weight) are consistent with independent T1 amplitude damping on 125 qubits and do not by themselves require a topological explanation. The significance lies in the forensic fine structure: clustering, instability, backend asymmetry, and detection-correction divergence. These features are not naturally explained by simple noise models. The proposed DD/feedback interference mechanism is conjectural and requires ablation experiments to confirm.

## Repository Structure

```
release/
  paper/
    z5_unified_paper.tex          LaTeX source (two-column format, 5 figures)
    figure1_perqubit_p1.pdf       Per-qubit P(1) for all 125 data qubits
    figure2_clustering.pdf        Dead qubit clustering analysis
    figure3_divergence.pdf        Detection-correction divergence
    figure4_dead_qubit_map.pdf    Dead qubits mapped onto 5x5x5 torus
    figure5_timing_schematic.pdf  DD/feedback timing schematic
  circuits/
    z5.qasm                       Transpiled dynamic circuit (44,505 lines, OpenQASM 3.0)
    z5x5x5_torus_halo_static.qasm  Static graph state scaffold (628 lines, OpenQASM 2.0)
  data/
    ibm_torino_dynamic_counts_*.json       3D torus results (Torino, 20k/50k shots)
    ibm_marrakesh_dynamic_counts_*.json    3D torus results (Marrakesh, 20k/50k shots)
    ibm_torino_z5x5_dynamic_counts_*.json  2D torus results (Torino, 20k shots)
    ibm_marrakesh_z5x5_dynamic_counts_*.json  2D torus results (Marrakesh, 20k/50k shots)
    ibm_marrakesh_static_counts_20000.json    Static scaffold results
    *_combined.json                Combined-register variants of all above
    job-d5g*-info.json             Raw IBM Quantum job metadata
    job-d5g*-result.json           Raw IBM Quantum job results (BitArray, zlib)
    verified_statistics.json       Machine-readable verified statistics
    verification_report.txt        Human-readable verification report
  analysis/
    rigorous_verify.py            Core statistical verification (entropy, parity, W, P_q(1))
    forensic_analysis.py          Clustering analysis (Monte Carlo, runs test, adjacency)
    generate_publication_materials.py  Figure generation and comprehensive reporting
    analysis_2d_part*.py          2D torus analysis scripts
  figures/
    figure[1-5]_*.pdf             Publication-quality figures (PDF)
    figure[1-5]_*.png             Screen-resolution figures (PNG)
  LICENSE                         MIT License
  requirements.txt                Python dependencies
```

## Hardware

All experiments were executed on IBM Quantum Heron processors in January 2026:

| Backend | Revision | Qubits | Median T1 | Median CZ error |
|---------|----------|--------|-----------|-----------------|
| ibm_torino | Heron r1 | 133 | ~170 us | ~0.5% |
| ibm_marrakesh | Heron r2 | 156 | ~150 us | ~0.7% |

## Reproducing the analysis

```bash
pip install -r requirements.txt
cd analysis
python rigorous_verify.py
python forensic_analysis.py
python generate_publication_materials.py
```

## Compiling the paper

```bash
cd paper
pdflatex z5_unified_paper.tex
pdflatex z5_unified_paper.tex   # second pass for references
```

## Citation

```bibtex
@article{burke2026toroidal,
  author  = {Burke, Joseph Daniel III},
  title   = {On the Statistical Behavior of a Deep Toroidal Circuit
             Executed Beyond Coherence Limits},
  year    = {2026},
  note    = {Preprint. Data and code: \url{https://github.com/ghostintheshellredteam/z5-topological-error-suppression}}
}
```

## License

MIT License. See [LICENSE](LICENSE) for details.
