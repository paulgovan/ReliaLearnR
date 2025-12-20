# Helper Functions

The `ReliaLearnR` package includes several helper functions to calculate
common reliability metrics. These functions include:

- `rel(failures, total_time)`: Calculates reliability given the number
  of failures and total time.
- `avail(downtime, total_time)`: Calculates availability given the
  downtime and total time.
- `mttf(downtime, total_time)`: Estimates the Mean Time To Failure.
- `mtbf(failures, total_time)`: Estimates the Mean Time Between
  Failures.
- `fr(failures, total_time)`: Estimates the failure rate.

This vignette provides examples of how to use these functions.

## Examples

To calculate the reliability of an item that ran for 3 years total and
was failed for 5 of those days:

``` r
result <- rel(5, 3 * 365)
cat(result)
```

0.9954338

To calculate the availability of an item that ran 3 years total, was
failed for 5 days, and had scheduled maintenance for 14 days:

``` r
result <- avail(5 + 14, 3 * 365)
cat(result)
```

0.9826484

The MTTR can be estimated with the base function `mean`. The MTTR for 5
failures with repair times in days of 5, 10, 15, 8, and 12:

``` r
result <- mean(c(5, 10, 15, 8, 12))
cat(result)
```

10

To estimate the MTTF for 1000 items that ran for 3 years total:

``` r
result <- mttf(5 + 14, 3 * 365)
cat(result)
```

57.63158

To estimate the MTBF for an item that failed 5 times over a total time
of 45,000 hours:

``` r
result <- mtbf(5, 45000)
cat(result)
```

9000

To estimate the failure rate for 100 items that ran for 5000 hours and
had 75 failures:

``` r
result <- fr(75, 100 * 5000)
cat(result)
```

0.00015

The Exponential failure probability can be estimated with the base
function `pexp`. To estimate the probability of survival at time 5 for
an item with a failure rate of 0.1:

``` r
result <- 1 - pexp(5, 0.1)
cat(result)
```

0.6065307

The $B_{n}$ life for the Exponential distribution can be estimated with
the base function `qexp`. To estimate the B10 life for an item with a
failure rate of 0.1:

``` r
result <- qexp(0.1, 0.1)
cat(result)
```

1.053605
