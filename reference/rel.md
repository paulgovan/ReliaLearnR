# Reliability (1 - outage / total)

Reliability is the probability that an item will perform its intended
function without failure over a specified period under stated
conditions. This function computes reliability given outage times and
total times.

## Usage

``` r
rel(outageTime, totalTime)
```

## Arguments

- outageTime:

  Numeric scalar or numeric vector of forced outage times.

- totalTime:

  Numeric scalar or numeric vector of total times (same units as
  outageTime).

## Value

Numeric scalar: reliability for the period (between 0 and 1).

## Examples

``` r
rel(100, 1000)
#> [1] 0.9
rel(c(10,20), c(500, 600))
#> [1] 0.9727273
```
