# Ablation Study: Topology as Noise Spectroscopy

**Companion to:** *On the Statistical Behavior of a Deep Toroidal Circuit Executed Beyond Coherence Limits*

---

> The original paper made claims. This directory tests them. Three ablation experiments on IBM Heron hardware at 50,000 shots each, executed on both ibm_torino and ibm_marrakesh. The result: topology matters, corrections are iatrogenic, and nothing quantum survives.

---

## The Three Experiments

| # | Experiment | What Changes | What Stays | Key Question |
|---|-----------|-------------|-----------|:------------|
| 1 | **Random-circuit control** | CZ connectivity randomized | Depth, qubit count, gate count, feedback | Is the torus special, or would any connectivity do? |
| 2 | **Feedback ablation** | Conditional X/Z corrections removed | Torus structure, measure-reset cycle | Do corrections protect or harm? |
| 7 | **Stabilizer verification** | Full dynamic circuit replaced with stabilizer measurement | Torus connectivity | Does any entanglement survive 350 cycles? |

## What We Found

### Topology leaves a real imprint

Random circuits with identical gate count/depth produce 4-5x weaker parity bias and dramatically fewer dead qubits (0 vs 3 on Torino, 8 vs 31 on Marrakesh). The torus connectivity creates measurable structure that random connectivity does not.

### Corrections are iatrogenic

Removing the conditional corrections *reduces* dead qubits from 31 to 8 on Marrakesh. The corrections don't shield qubits from noise --- they create qubit-specific suppression patterns. On Torino, removing corrections flips the sign of the parity bias entirely.

### No quantum coherence survives

Stabilizer verification shows parity bias consistent with zero (within 1/sqrt(50000) statistical noise). The graph state is fully thermalized. Every statistical invariant observed in the main paper is a classical fingerprint, not a quantum signature.

### The three-way interaction

The dominant effect is not topology alone, not corrections alone, but the interaction between **torus connectivity**, **conditional corrections**, and **hardware-level dynamical decoupling** (present on Marrakesh Heron r2, absent on Torino Heron r1). This three-way interaction explains the 10x backend asymmetry in dead-qubit count.

## Results Summary

| Dataset | H_norm | Parity (epsilon) | Hamming | Dead Qubits |
|---------|:------:|:---------:|:-------:|:-----------:|
| **Original (Torino)** | 1.000000 | -0.0054 | 0.1536 | 3 |
| **Original (Marrakesh)** | 0.999990 | -0.0025 | 0.0746 | 31 |
| Random (Torino) | 1.000000 | -0.0012 | 0.2308 | 0 |
| Random (Marrakesh) | 0.999987 | -0.0005 | 0.0846 | 8 |
| No corrections (Torino) | 1.000000 | +0.0044 | 0.2047 | 0 |
| No corrections (Marrakesh) | 0.999989 | -0.0034 | 0.0922 | 8 |
| Stabilizer (Torino) | 1.000000 | -0.0036 | 0.3531 | 0 |
| Stabilizer (Marrakesh) | 1.000000 | +0.0056 | 0.3268 | 1 |

Full analysis with hypothesis tests: [ABLATION_RESULTS.md](ABLATION_RESULTS.md)

## Structure

```
ablation/
├── z5_ablation_paper.tex                  Companion paper (LaTeX source)
├── ABLATION_RESULTS.md                    Complete results & hypothesis tests
│
├── circuits/                              15 OpenQASM 3.0 ablation circuits
│   ├── ablation1_random_control_*.qasm    Random connectivity (3 seeds)
│   ├── ablation2_no_corrections.qasm      Torus without feedback corrections
│   ├── ablation3_open_boundary_*.qasm     Open boundary conditions
│   ├── ablation5_depth_*.qasm             Depth scaling (100/200/500 cycles)
│   ├── ablation5_random_depth_*.qasm      Random controls for depth scaling
│   ├── ablation7_stabilizer_*.qasm        Graph-state stabilizer measurement
│   └── ablation_manifest.json             Machine-readable experiment manifest
│
├── results/                               Raw hardware data
│   ├── ibm_*_counts.json                  6 count files (2 backends x 3 experiments)
│   ├── hardware_ablation_analysis.json    Computed invariants for all datasets
│   ├── ablation_comparative_analysis.json Full comparative analysis
│   ├── job-*-meta.json                    24 IBM Quantum job metadata files
│   └── submission_*.json                  Submission records
│
├── generate_ablation_circuits.py          Circuit generator (TorusLattice + QASMEmitter)
├── submit_to_hardware.py                  Hardware submission pipeline
├── run_ablation_experiments.py            Experiment runner (sim + hardware)
├── analyze_ablation_results.py            Comparative analysis script
└── run_hardware_analysis.py               Hardware-specific analysis
```

## Usage

```bash
# Generate all ablation circuits
python generate_ablation_circuits.py

# Submit to hardware (requires IBM Quantum access)
python submit_to_hardware.py --backend ibm_torino --shots 50000
python submit_to_hardware.py --backend ibm_marrakesh --shots 50000

# Analyze results
python analyze_ablation_results.py

# Compile the companion paper
pdflatex z5_ablation_paper.tex && pdflatex z5_ablation_paper.tex
```

## IBM Quantum Jobs

| Job ID | Experiment | Backend |
|--------|-----------|---------|
| `d65ob03e4kfs73cvm13g` | Random control (seed 42) | ibm_torino |
| `d65ob1gqbmes739d5i3g` | No corrections | ibm_torino |
| `d65obt0qbmes739d5jeg` | Stabilizer verification | ibm_torino |
| `d65obbhv6o8c73d38a30` | Random control (seed 42) | ibm_marrakesh |
| `d65obctbujdc73ctnlp0` | No corrections | ibm_marrakesh |
| `d65ocddbujdc73ctnnkg` | Stabilizer verification | ibm_marrakesh |

All jobs completed successfully on February 10, 2026.
