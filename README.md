# Paired-Acquisition Neural Factorization on SCORPION

Standalone reproducibility package for the core paired-scanner method study:
**Paired-Acquisition Neural Factorization** on the SCORPION histopathology
benchmark.

Public PDF:
https://matthewvaishnav.github.io/paired-acquisition-factorization-scorpion/paired-acquisition-factorization-scorpion.pdf

## Dataset and unit of analysis

- Dataset: SCORPION paired-scanner human H&E benchmark.
- Biological material: 48 original slides.
- Paired regions: 480 aligned tissue regions.
- Scanner views: five scanners per region, 2,400 total real-human-tissue patches.
- Statistical unit: original slide.

## Headline result

The frozen paired-acquisition neural factorization objective reduced linearly
recoverable scanner identity in the biological branch while preserving or
improving same-tissue cross-scanner retrieval across DINOv2, Phikon, and
ImageNet ResNet50 feature substrates.

Transfer-backbone repeated-measures summary over Phikon and ResNet50:

| Metric | Mean difference | 95% slide-bootstrap interval | Favorable slides |
|---|---:|---:|---:|
| Scanner-probe accuracy | -0.401875 | [-0.414458, -0.389458] | 48/48 |
| Mean paired cosine | +0.057762 | [+0.053949, +0.061526] | 48/48 |
| Worst paired cosine | +0.062832 | [+0.058452, +0.067158] | 48/48 |
| Mean top-1 retrieval | +0.004344 | [+0.003313, +0.005427] | 41/48 |
| Worst top-1 retrieval | +0.010833 | [+0.007083, +0.014583] | 36/48 |

## What is included

- Core model code under src/models.
- SCORPION experiment runners under experiments/scorpion.
- SCORPION feature extraction and analysis scripts under scripts/scorpion.
- Result and positioning notes under docs.
- Compact result artifacts when available locally.
- Paper source snapshot under paper/arxiv.

## What is not included

The repository intentionally excludes raw images, extracted patches, feature
archives, model checkpoints, and large generated run directories.

## Claim boundary

This is a representation-identifiability study. It does not establish clinical
safety, diagnostic equivalence, patient-outcome improvement, external-center
clinical deployment, or perfect biological/acquisition disentanglement.
