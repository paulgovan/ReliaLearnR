# Changelog

## ReliaLearnR 0.5

CRAN release: 2026-05-27

### New Features

- New
  [`rbd()`](https://paulgovan.github.io/ReliaLearnR/reference/rbd.md)
  tutorial covering Reliability Block Diagrams and system reliability,
  including series, parallel, mixed, and k-out-of-n configurations,
  system MTTF calculation, and an introduction to Fault Tree Analysis —
  with 4 code exercises and 12 quiz questions.
- New [`rs()`](https://paulgovan.github.io/ReliaLearnR/reference/rs.md)
  tutorial covering Repairable Systems Analysis, including
  Non-Homogeneous Poisson Process (NHPP) modeling, Mean Cumulative
  Function (MCF) estimation, and failure prediction.
- Added a companion book to supplement the interactive tutorials.

### Improvements

- All tutorials deepened with more exercises and quiz questions:
  - **RAM**: Added an interactive failure rate (λ) slider, a Weibull
    bridge section, and 3 new exercises on series/parallel system
    reliability.
  - **LDA**: Added an Anderson-Darling goodness-of-fit section with 2
    quiz questions and a model comparison exercise; 2 additional code
    exercises.
  - **RS**: Added 3 code exercises covering NHPP fitting, MCF plotting,
    and failure prediction.
  - **RT**: Added 3 code exercises covering Duane plotting, RGA, and the
    Arrhenius acceleration factor.
- NHPP tutorial updated to a MCF-first workflow for a more intuitive
  learning progression.
- Added `DiagrammeR`-based visual diagrams to the RBD tutorial.

## ReliaLearnR 0.3 (Formerly WeibullR.learnr)

CRAN release: 2026-01-06

### Breaking Changes

- The package has been renamed from `WeibullR.learnr` to `ReliaLearnR`
  to better reflect its broader focus on reliability engineering topics
  beyond just Weibull analysis.
- All functions and tutorials have been updated to use the new package
  name `ReliaLearnR`.
- The `WeibullR.learnr()` function has been renamed to
  [`lda()`](https://paulgovan.github.io/ReliaLearnR/reference/lda.md) to
  simplify its usage.
- The `TestR.learnr()` function has been renamed to
  [`rt()`](https://paulgovan.github.io/ReliaLearnR/reference/rt.md) to
  simplify its usage.
- The `RAMR.learnr()` function has been renamed to
  [`ram()`](https://paulgovan.github.io/ReliaLearnR/reference/ram.md) to
  simplify its usage.
- All references to `WeibullR.learnr` in documentation and vignettes
  have been updated to `ReliaLearnR`.

### Other Improvements

- Better (and more) examples and exercises in all tutorials. Improved
  comments and explanations.
  <https://github.com/paulgovan/ReliaLearnR/issues/21>,
  <https://github.com/paulgovan/ReliaLearnR/issues/22>,
  <https://github.com/paulgovan/ReliaLearnR/issues/23>,
  <https://github.com/paulgovan/ReliaLearnR/issues/25>,
  <https://github.com/paulgovan/ReliaLearnR/issues/41>.
- New RAM vignette <https://github.com/paulgovan/ReliaLearnR/issues/32>.

### Minor Improvements and bug fixes

- Improved package documentation
  <https://github.com/paulgovan/ReliaLearnR/issues/20>,
  <https://github.com/paulgovan/ReliaLearnR/issues/24>,
  <https://github.com/paulgovan/ReliaLearnR/issues/26>,
  <https://github.com/paulgovan/ReliaLearnR/issues/34>,
  <https://github.com/paulgovan/ReliaLearnR/issues/35>,
  <https://github.com/paulgovan/ReliaLearnR/issues/50>,
  <https://github.com/paulgovan/ReliaLearnR/issues/51>,
  <https://github.com/paulgovan/ReliaLearnR/issues/52>,
  <https://github.com/paulgovan/ReliaLearnR/issues/50>.
- Minor Improvements and bug fixes
  <https://github.com/paulgovan/ReliaLearnR/issues/27>
