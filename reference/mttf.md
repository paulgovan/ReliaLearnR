# Mean Time To Failure (MTTF)

For non-repairable items MTTF = total operating time / number of
failures. The MTTF is the expected time to the first failure. It is
commonly used for non-repairable items. The behavior implemented is the
same as mtbf here; keep separate name for semantic clarity.

## Usage

``` r
mttf(failures, totalTime)
```

## Arguments

- failures:

  Numeric scalar or numeric vector of failure counts (non-negative).

- totalTime:

  Numeric scalar or numeric vector of total operating times.

## Value

Numeric scalar: MTTF. If number of failures is zero, returns Inf (with a
warning).

## Examples

``` r
mttf(5, 1000)
#> [1] 200
mttf(c(2,3), c(500,500))
#> [1] 200
```
