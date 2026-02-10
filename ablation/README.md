# Ablation Experiments

Systematic ablation study to isolate the contribution of each structural element
in the Z5 toroidal circuit. Each variant modifies **exactly one** element.

## Experiments

| # | Experiment | What changes | What stays | Key question |
|---|-----------|-------------|-----------|-------------|
| 1 | **Random-circuit control** | CZ connectivity → random pairs | Depth, qubit count, gate count, feedback | Does torus topology matter? |
| 2 | **Feedback ablation** | Conditional corrections removed | Torus structure, measure-reset cycle | Are corrections essential? |
| 3 | **Open boundary** | Periodic → open boundaries | Lattice dimensions, feedback | Do non-contractible loops matter? |
| 5 | **Depth scaling** | 100/200/500 feedback cycles | Torus topology | How do invariants degrade with depth? |
| 7 | **Stabilizer verification** | Full dynamic → static graph state | Torus topology | Does any entanglement survive? |

## Usage

```bash
# 1. Generate all ablation circuits
python generate_ablation_circuits.py

# 2. Run experiments (choose one)
python run_ablation_experiments.py --simulate --shots 1000        # Local simulation
python run_ablation_experiments.py --backend ibm_torino --shots 20000   # Hardware
python run_ablation_experiments.py --backend ibm_marrakesh --shots 50000 # Hardware

# Run specific ablations only
python run_ablation_experiments.py --backend ibm_torino --shots 20000 --ablation 1 2

# Dry run (list circuits without executing)
python run_ablation_experiments.py --dry-run

# 3. Analyze results
python analyze_ablation_results.py
```

## Decision Matrix

| Outcome | Interpretation |
|---------|---------------|
| Random ≈ Torus | Topology provides **no** advantage |
| Random << Torus | Topology **does** protect — strongest finding |
| No-corrections ≈ Torus | Corrections are cosmetic |
| No-corrections << Torus | Feedback loop is **essential** |
| Open ≈ Torus | Non-contractible loops don't matter |
| Open << Torus | **Global** topology provides protection |
| Torus degrades slower | Depth-dependent topological advantage |
| Stabilizer parity biased | Entanglement survives beyond coherence — **shocking** |

## Generated Circuits

After running `generate_ablation_circuits.py`:

```
ablation/circuits/
  ablation1_random_control_seed42.qasm       # 3 random seeds
  ablation1_random_control_seed137.qasm
  ablation1_random_control_seed256.qasm
  ablation2_no_corrections.qasm              # Torus, no conditional corrections
  ablation3_open_boundary_5x5x5.qasm         # Open boundaries (300 vs 375 edges)
  ablation5_depth_100cycles.qasm             # Torus at reduced depth
  ablation5_depth_200cycles.qasm
  ablation5_depth_500cycles.qasm
  ablation5_random_depth_100cycles.qasm      # Matching random controls
  ablation5_random_depth_200cycles.qasm
  ablation5_random_depth_500cycles.qasm
  ablation7_stabilizer_verification.qasm     # Static stabilizer check
  ablation_manifest.json                     # Machine-readable experiment manifest
```
