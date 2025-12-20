# Mean Time Between Failures (MTBF) for repairable items.

MTBF = total operating time / number of failures. The MTBF is the
expected time between consecutive failures. It is commonly used for
repairable items. The behavior is the same as mttf here; keep separate
name for semantic clarity.

## Usage

``` r
mtbf(failures, totalTime)
```

## Arguments

- failures:

  Numeric scalar or numeric vector of failure counts (non-negative).

- totalTime:

  Numeric scalar or numeric vector of total operating times.

## Value

Numeric scalar: MTBF. If number of failures is zero, returns Inf (with a
warning).

## Examples

``` r
mtbf(5, 1000)
#> [1] 200
mtbf(c(2,3), c(500,500))
#> [1] 200
```
