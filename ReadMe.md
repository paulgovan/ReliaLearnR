[![CRAN
status](https://www.r-pkg.org/badges/version/WeibullR.learnr)](https://CRAN.R-project.org/package=WeibullR.learnr)
![](http://cranlogs.r-pkg.org/badges/grand-total/WeibullR.learnr)
![](http://cranlogs.r-pkg.org/badges/WeibullR.learnr) [![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![DOI](https://zenodo.org/badge/644030886.svg)](https://zenodo.org/badge/latestdoi/644030886)

## WeibullR.learnr

An interactive introduction to Life Data Analysis.

## Getting Started

To install WeibullR.plotly in R:

``` r
install.packages('WeibullR.plotly')
```

To install the development version:

``` r
devtools::install_github('paulgovan/weibullr.learnr')
```

## Modules

There are currently two learning modules:

* `WeibullR.learnr()` - An interactive introduction to Life Data Analysis.
* `RAMR.learnr()` - A quick reference for common Reliability, Availability, and Maintainability concepts.

The modules can also be accessed in a browser at [WeibullR.learnr](https://paulgovan.shinyapps.io/weibullrlearnr/) and [RAMR.learnr](https://paulgovan.shinyapps.io/ramrlearnr/).

## Functions

Several helper functions for common RAM calculations are included:

* `rel()` - reliability function
* `avail()` - availability function
* `mttf()` - mean time to failure
* `mtbf()` - mean time between failure
* `serv()` - serviceability factor
* `fr()` - failure rate

## More resources

[WeibullR.plotly](https://paulgovan.github.io/WeibullR.plotly/) is a package for building interactive Weibull models. 

[WeibullR.shiny](https://paulgovan.github.io/WeibullR.shiny/) is a web application for life data analysis.
