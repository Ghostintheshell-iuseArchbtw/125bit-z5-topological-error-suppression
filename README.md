# 125-Qubit Z5 Toroidal Error Suppression

**On the Statistical Behavior of a Deep Toroidal Circuit Executed Beyond Coherence Limits**

*Joseph Daniel Burke III, Independent Researcher*

---

> A 5x5x5 toroidal graph-state circuit --- 1,584 layers, 11,900 CZ gates, 350 measurement-reset-feedback cycles --- executed on IBM Heron processors at 5-10x beyond coherence time. The topology leaves a measurable classical fingerprint in the noise. The ablation study proves it, then honestly reframes what "it" is.

---

## The Experiment

125 data qubits are wired into a three-dimensional torus ($\mathbb{Z}_5^3$) using CZ entangling gates on IBM Heron processors. Each of 350 feedback cycles measures 4 ancilla qubits, applies conditional X/Z corrections based on syndrome outcomes, and re-entangles the lattice. The resulting circuit is 44,505 lines of OpenQASM 3.0 and runs roughly an order of magnitude past the point where any quantum coherence should survive.

The question is not whether the qubits are still coherent (they are not). The question is whether the *topology* of the circuit leaves a detectable imprint on the *classical* output distribution --- and whether the feedback corrections do anything useful, or something worse.

## What We Found

### Paper I: The Original Study

| Invariant | Torino (Heron r1) | Marrakesh (Heron r2) |
|-----------|:-----------------:|:--------------------:|
| H_norm | 1.000000 | 0.999990 |
| Parity bias (epsilon) | -0.0054 | -0.0025 |
| Hamming weight | 0.1536 | 0.0746 |
| Dead qubits | 3 | 31 |
| Syndrome asymmetry | P(m=1) = 0.530 | P(m=1) = 0.489 |

Dead qubits cluster spatially (runs of 7 and 4 consecutive indices, p < 0.004). Their positions shift between runs (Jaccard = 0.25), ruling out static hardware defects. Syndrome detection degrades 7.7x slower than Hamming weight between backends.

### Paper II: The Ablation Study

Three hardware ablation experiments at 50,000 shots each on both backends:

| Ablation | What It Tests | Verdict |
|----------|--------------|---------|
| **Random-circuit control** | Replace torus CZ with random pairs (same depth/gates) | Parity bias is **4-5x stronger** on torus. Dead-qubit clustering **vanishes** with random connectivity. Topology matters. |
| **Feedback ablation** | Keep torus, remove conditional corrections | Corrections are **iatrogenic**: they *create* 23 extra dead qubits on Marrakesh rather than preventing them. Parity flips sign on Torino. |
| **Stabilizer verification** | Measure graph-state stabilizers directly | **No entanglement survives.** Parity consistent with zero. Graph state fully thermalized. |

### The Key Discovery

The corrections don't protect qubits --- they *kill specific ones*. On Marrakesh: 31 dead qubits with corrections, 8 without. The feedback loop is a noise microscope, not a noise shield. Combined with Marrakesh's hardware-level dynamical decoupling, the three-way interaction (torus x corrections x DD) produces the dominant effect.

### The Reframing

The Z5 torus topology creates detectable classical correlations in a noise-dominated output distribution. These correlations (parity bias, dead-qubit clustering, Hamming weight suppression) are real, reproducible, and topology-dependent. They do not constitute quantum error suppression. They constitute **topological noise spectroscopy**: the circuit's geometry selectively amplifies specific noise channels, making them measurable.

## Hardware

| Backend | Revision | Qubits | Median T1 | Median CZ Error | Hardware DD |
|---------|----------|:------:|:---------:|:---------------:|:-----------:|
| ibm_torino | Heron r1 | 133 | ~170 us | ~0.5% | No |
| ibm_marrakesh | Heron r2 | 156 | ~150 us | ~0.7% | Yes (TLS mitigation) |

The backend asymmetry (Torino: 3 dead qubits; Marrakesh: 31) is itself a finding. Heron r2's dynamical decoupling interacts with the feedback loop to produce qualitatively different behavior.

## Repository Structure

```
.
├── paper/
│   ├── z5_unified_paper.tex              Main paper (LaTeX, two-column, 5 figures)
│   ├── z5_unified_paper.pdf              Compiled PDF
│   └── figure[1-5]_*.pdf                 Publication figures
│
├── ablation/
│   ├── z5_ablation_paper.tex             Ablation paper (LaTeX, companion to main)
│   ├── ABLATION_RESULTS.md               Complete results with hypothesis tests
│   ├── circuits/                         15 ablation circuits (OpenQASM 3.0)
│   │   └── ablation_manifest.json        Machine-readable experiment manifest
│   ├── results/                          Raw hardware data (6 count files, 24 job metadata)
│   ├── generate_ablation_circuits.py     Circuit generator
│   ├── submit_to_hardware.py             Hardware submission pipeline
│   ├── analyze_ablation_results.py       Comparative analysis
│   └── run_hardware_analysis.py          Hardware-specific analysis
│
├── circuits/
│   ├── z5.qasm                           Main circuit (44,505 lines, OpenQASM 3.0)
│   └── z5x5x5_torus_halo_static.qasm    Static graph-state scaffold (OpenQASM 2.0)
│
├── data/
│   ├── ibm_*_counts_*.json               Raw count data (3D/2D, Torino/Marrakesh, 20k/50k)
│   ├── job-*-info.json                   IBM Quantum job metadata
│   ├── job-*-result.json                 IBM Quantum job results (BitArray, zlib)
│   ├── verified_statistics.json          Machine-readable verified invariants
│   └── verification_report.txt           Human-readable verification report
│
├── analysis/
│   ├── rigorous_verify.py                Core verification (entropy, parity, W, P_q)
│   ├── forensic_analysis.py              Clustering (Monte Carlo, runs test, adjacency)
│   ├── generate_publication_materials.py Figure generation
│   └── analysis_2d_part[2-5].py          2D torus comparative analysis
│
├── figures/
│   └── figure[1-5]_*.{pdf,png}           Publication figures (PDF + PNG)
│
├── requirements.txt
└── LICENSE                                MIT
```

## Quick Start

### Reproduce the analysis

```bash
pip install -r requirements.txt

# Core statistical verification
python analysis/rigorous_verify.py

# Dead-qubit clustering forensics
python analysis/forensic_analysis.py

# Publication figures
python analysis/generate_publication_materials.py
```

### Compile the papers

```bash
# Main paper
cd paper && pdflatex z5_unified_paper.tex && pdflatex z5_unified_paper.tex

# Ablation paper
cd ablation && pdflatex z5_ablation_paper.tex && pdflatex z5_ablation_paper.tex
```

### Run ablation experiments (requires IBM Quantum access)

```bash
cd ablation

# Generate circuits
python generate_ablation_circuits.py

# Submit to hardware
python submit_to_hardware.py --backend ibm_torino --shots 50000

# Analyze results
python analyze_ablation_results.py
```

## Papers

**Paper I** --- *On the Statistical Behavior of a Deep Toroidal Circuit Executed Beyond Coherence Limits*
> Reports the five statistical invariants, dead-qubit clustering, backend asymmetry, and detection-correction divergence. Specifies falsifiable predictions and required ablation protocols.

**Paper II** --- *Ablation Study of a Deep Toroidal Circuit: Topology as Noise Spectroscopy*
> Executes the ablation protocols specified in Paper I. Discovers the iatrogenic nature of corrections, the three-way torus/corrections/DD interaction, and reframes the finding from error suppression to noise spectroscopy.

## What This Work Does Not Claim

- It does **not** claim fault-tolerant quantum error correction
- It does **not** claim surviving quantum coherence after 350 cycles at 5-10x T1
- It does **not** claim the toroidal topology "protects" information in any quantum-information-theoretic sense
- It **does** claim that circuit topology leaves measurable, reproducible classical fingerprints in noise-dominated output distributions, and that this phenomenon may be useful for hardware characterization

## Citation

```bibtex
@article{burke2026toroidal,
  author  = {Burke, Joseph Daniel III},
  title   = {On the Statistical Behavior of a Deep Toroidal Circuit
             Executed Beyond Coherence Limits},
  year    = {2026},
  note    = {Preprint. Data and code:
             \url{https://github.com/Ghostintheshell-iuseArchbtw/125bit-z5-topological-error-suppression}}
}

@article{burke2026ablation,
  author  = {Burke, Joseph Daniel III},
  title   = {Ablation Study of a Deep Toroidal Circuit:
             Topology as Noise Spectroscopy},
  year    = {2026},
  note    = {Companion to \cite{burke2026toroidal}. Data and code:
             \url{https://github.com/Ghostintheshell-iuseArchbtw/125bit-z5-topological-error-suppression}}
}
```

## License

MIT License. See [LICENSE](LICENSE).
