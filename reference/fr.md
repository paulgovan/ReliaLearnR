# Failure rate (lambda)

Failure rate is the frequency with which an engineered system or
component fails, expressed in failures per unit of time. This function
computes failure rate given failure counts and total operating times.

## Usage

``` r
fr(failures, totalTime)
```

## Arguments

- failures:

  Numeric scalar or numeric vector of failure counts (non-negative).

- totalTime:

  Numeric scalar or numeric vector of total operating times.

## Value

Numeric scalar: failures per unit time (failures / totalTime).

## Examples

``` r
fr(75, 5000)
#> [1] 0.015
fr(c(10,5), c(1000,2000))
#> [1] 0.005
```
