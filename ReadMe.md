[![CRAN
status](https://www.r-pkg.org/badges/version/WeibullR.learnr)](https://CRAN.R-project.org/package=WeibullR.learnr)
![](http://cranlogs.r-pkg.org/badges/grand-total/WeibullR.learnr)
![](http://cranlogs.r-pkg.org/badges/WeibullR.learnr) [![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![DOI](https://zenodo.org/badge/644030886.svg)](https://zenodo.org/badge/latestdoi/644030886)

# WeibullR.learnr

An Interactive Introduction to Life Data Analysis. 

## Motivation

Life data analysis is the study of how things, from machines to people, function over time. While no shortage of learning resources for this field exist, many reference proprietary software that is often unavailable to those hoping to get started with life data. `WeibullR.learnr` is an open source set of interactive learning modules, exercises, and functions for learning introductory life data analysis. The primary motivation for the development of `WeibullR.learnr` was to simultaneously introduce the basic concepts and also open source software tools for analyzing life data. 

## Installation Instructions

To install WeibullR.learnr in R:

``` r
install.packages('WeibullR.learnr')
```

To install the development version:

``` r
devtools::install_github('paulgovan/weibullr.learnr')
```

This package depends on [WeibullR](https://CRAN.R-project.org/package=WeibullR) by David Silkworth and Jurgen Symynck (2022), a R package for Weibull Analysis, and [learnr](https://CRAN.R-project.org/package=learnr) by Garrick Aden-Buie et al. (2023), a framework for building interactive learning modules in R. 

## Usage

The learning modules are designed to be plug-and-play, but changes can be made by forking this repository and modifying the fork. 

There are currently two primary learning modules. These modules can be taken separately or together. 

* `WeibullR.learnr()` - An interactive introduction to Life Data Analysis.
* `RAMR.learnr()` - A quick reference for common Reliability, Availability, and Maintainability concepts.

The modules can also be accessed in a browser at [WeibullR.learnr](https://paulgovan.shinyapps.io/weibullrlearnr/) and [RAMR.learnr](https://paulgovan.shinyapps.io/ramrlearnr/).

Several helper functions for common RAM calculations are also included:

* `rel()` - reliability function
* `avail()` - availability function
* `mttf()` - mean time to failure
* `mtbf()` - mean time between failure
* `serv()` - serviceability factor
* `fr()` - failure rate

## Code of Conduct

Please note that the WeibullR.learnr project is released with a [Contributor Code of Conduct](https://paulgovan.github.io/WeibullR.learnr/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.

## More resources

[WeibullR.plotly](https://paulgovan.github.io/WeibullR.plotly/) is a package for building interactive Weibull models. 

[WeibullR.shiny](https://paulgovan.github.io/WeibullR.shiny/) is a web application for life data analysis.


