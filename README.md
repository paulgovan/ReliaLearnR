
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ReliaLearnR

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![CRAN
status](https://www.r-pkg.org/badges/version/ReliaLearnR)](https://CRAN.R-project.org/package=ReliaLearnR)
[![R-CMD-check](https://github.com/paulgovan/ReliaLearnR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/paulgovan/ReliaLearnR/actions/workflows/R-CMD-check.yaml)
[![](http://cranlogs.r-pkg.org/badges/last-month/ReliaLearnR)](https://cran.r-project.org/package=ReliaLearnR)
[![](http://cranlogs.r-pkg.org/badges/grand-total/ReliaLearnR)](https://cran.r-project.org/package=ReliaLearnR)
[![](https://img.shields.io/badge/doi-10.32614/CRAN.package.ReliaLearnR-green.svg)](https://doi.org/10.32614/CRAN.package.ReliaLearnR)

<!-- badges: end -->

Welcome to `ReliaLearnR`! This package contains a set of interactive
learning modules for life data analysis, focusing on reliability,
availability, and maintainability (RAM). It is designed for beginners,
including university students and early-career professionals.

## Motivation

Life data analysis is the study of how systems function over time, from
machines to people. While various learning resources exist, many rely on
proprietary software that can be inaccessible to students and
early-career professionals.

`ReliaLearnR` is an open-source collection of interactive learning
modules, exercises, and functions designed for introductory life data
analysis. The primary goal of this project is to introduce fundamental
concepts while providing an open-source alternative for analyzing life
data.

## Installation

`ReliaLearnR` is written in R and is built using
[WeibullR](https://CRAN.R-project.org/package=WeibullR) by David
Silkworth and Jurgen Symynck (2022), a R package for Weibull Analysis,
and [learnr](https://CRAN.R-project.org/package=learnr) by Garrick
Aden-Buie et al. (2023), a framework for building interactive learning
modules in R.

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
installing. To do this when prompted during installation type 1 (All) to
update.

## Usage

Currently, three primary learning modules exist. These modules can be
taken in either order and can be taken separately or together. The
learning modules are designed to be plug-and-play, but changes can be
made by forking the software repository and modifying the fork.

- `lda()` - An introduction to Life Data Analysis (estimated duration ~2
  hours)
- `ram()` - A quick reference for common Reliability, Availability, and
  Maintainability concepts (estimated duration ~ 1 hour)
- `rt()`- An interactive introduction to Reliability Testing (estimated
  duration ~ 2 hours)

The modules can also be accessed in a browser at
<https://paulgovan.shinyapps.io/RAMAnalysis/>,
<https://paulgovan.shinyapps.io/LifeDataAnalysis/> and
<https://paulgovan.shinyapps.io/ReliabilityTesting/>.

![](https://github.com/paulgovan/WeibullR.learnr/blob/master/inst/paper/WeibullRlearnr.png?raw=true)<!-- -->

Several helper functions for common RAM calculations are also included:

- `rel()` - reliability function
- `avail()` - availability function
- `mttf()` - mean time to failure
- `mtbf()` - mean time between failure
- `fr()` - failure rate

## Code of Conduct

Please note that the ReliaLearnR project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.

## More resources

[WeibullR.plotly](https://paulgovan.github.io/WeibullR.plotly/) is a
package for building interactive Weibull models.

[WeibullR.shiny](https://paulgovan.github.io/WeibullR.shiny/) is a web
application for life data analysis.
