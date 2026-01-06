# ReliaLearnR

Welcome to **ReliaLearnR!** This package provides interactive learning
modules on fundamental concepts in reliability analysis. The modules are
built using the `learnr` package and cover topics such as life data
analysis, reliability testing, and reliability, availability, and
maintainability (RAM) concepts. The package also includes helper
functions for common RAM calculations.

## Installation

To install ReliaLearnR in R:

``` r
install.packages('ReliaLearnR')
```

To install the development version:

``` r
# install.packages("pak")
pak::pak("paulgovan/ReliaLearnR")
```

Note: You may be prompted to update dependent packages before
installing. To do so, type 1 (All) when prompted.

## Recommended Background

ReliaLearnR is designed for students and professionals who are
interested in learning the fundamentals of reliability analysis. No
prior experience is required, but a basic understanding of R and
statistics is helpful. For a complete beginners’ guide to R, check out
the resources at <https://education.rstudio.com/learn/beginner/>.

## Usage

The package includes three interactive learning modules. To launch the
modules, load the package and call the respective function:

- [`ram()`](https://paulgovan.github.io/ReliaLearnR/reference/ram.md) -
  A quick reference for common Reliability, Availability, and
  Maintainability (RAM) concepts
- [`lda()`](https://paulgovan.github.io/ReliaLearnR/reference/lda.md) -
  An introduction to Life Data Analysis
- [`rt()`](https://paulgovan.github.io/ReliaLearnR/reference/rt.md)- An
  introduction to Reliability Testing

The modules can also be accessed in a browser at
[paulgovan.shinyapps.io/RAMAnalysis/](https://paulgovan.shinyapps.io/RAMAnalysis/),
[paulgovan.shinyapps.io/LifeDataAnalysis/](https://paulgovan.shinyapps.io/LifeDataAnalysis/)
and
[paulgovan.shinyapps.io/ReliabilityTesting/](https://paulgovan.shinyapps.io/ReliabilityTesting/).

![](https://github.com/paulgovan/ReliaLearnR/blob/master/inst/paper/ReliaLearnR.png?raw=true)

The package also includes several helper functions for common RAM
calculations. These functions can be used independently of the learning
modules:

- [`rel()`](https://paulgovan.github.io/ReliaLearnR/reference/rel.md) -
  reliability function
- [`avail()`](https://paulgovan.github.io/ReliaLearnR/reference/avail.md) -
  availability function
- [`mttf()`](https://paulgovan.github.io/ReliaLearnR/reference/mttf.md) -
  mean time to failure
- [`mtbf()`](https://paulgovan.github.io/ReliaLearnR/reference/mtbf.md) -
  mean time between failure
- [`fr()`](https://paulgovan.github.io/ReliaLearnR/reference/fr.md) -
  failure rate

## Design

The learning modules are designed to be interactive and engaging, with a
focus on practical applications. Each module includes a mix of
instructional content, code examples, and exercises to reinforce
learning. The modules are self-paced, allowing learners to progress at
their own speed.

The original learning modules were provided in a series of workshops,
where each workshop covered a specific module over a 1-2 hour period.
These workshops were designed to be completed in a classroom setting
with an instructor. The current version of the modules has been adapted
for self-paced learning, but they can still be used in a classroom
setting with an instructor.

To adopt the modules for classroom use, instructors can either access
them via the project website or install the package and use the
functions directly. Instructors can also modify the modules to fit their
specific needs, as the source code is available on the project
repository.

## Motivation

This project began as an effort to build upon a reliability program
developed at a major technology company. The original program proved to
provide a strong foundation, providing a structured learning opportunity
that helped many early-career professionals understand and apply the
fundamental concepts of reliability engineering. Over time, however, the
proprietary nature of the program limited accessibility and
adaptability.

Recognizing the importance of keeping reliability learning both relevant
and accessible, this project was initiated to create an open-source
framework for teaching reliability analysis. By leveraging this
framework, this project aims to reach a broader audience, encourage
collaboration, and ensure that learning resources can evolve as needs
and priorities change.

## Code of Conduct

Please note that the ReliaLearnR project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
