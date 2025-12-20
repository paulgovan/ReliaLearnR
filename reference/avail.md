# Availability (1 - unavailability / total)

Availability is the proportion of time a system is in a functioning
condition. This function computes availability given unavailable times
and total times.

## Usage

``` r
avail(unavailTime, totalTime)
```

## Arguments

- unavailTime:

  Numeric scalar or numeric vector of unavailable times.

- totalTime:

  Numeric scalar or numeric vector of total times (same units as
  unavailTime).

## Value

Numeric scalar: availability for the period (between 0 and 1).

## Examples

``` r
avail(100, 1000)
#> [1] 0.9
avail(c(5,10), c(500,600))
#> [1] 0.9863636
```
