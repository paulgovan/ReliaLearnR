
test_that("rel() works for scalar and vector inputs and returns numeric scalar", {
  expect_equal(rel(100, 1000), 0.9)
  expect_equal(rel(c(10, 20), c(500, 600)), 1 - (sum(c(10,20)) / sum(c(500,600))))
  expect_length(rel(100, 1000), 1)
  expect_type(rel(100, 1000), "double")
})

test_that("rel() clamps values to [0,1] when outages exceed total", {
  # outage > total -> clamped to 0
  expect_equal(rel(600, 500), 0)
  # If outage equals zero and total > 0 -> 1
  expect_equal(rel(0, 500), 1)
})

test_that("avail() behaves like rel() (scalar, vector, clamp)", {
  expect_equal(avail(100, 1000), 0.9)
  expect_equal(avail(c(5,10), c(500,600)), 1 - (sum(c(5,10)) / sum(c(500,600))))
  expect_equal(avail(600, 500), 0)   # clamped
  expect_length(avail(10, 100), 1)
  expect_type(avail(10, 100), "double")
})

test_that("mtbf() and mttf() compute correctly for normal cases", {
  expect_equal(mtbf(5, 1000), 1000 / 5)
  expect_equal(mttf(2, 500), 500 / 2)
  expect_length(mtbf(5, 1000), 1)
  expect_type(mttf(2, 500), "double")
})

test_that("mtbf()/mttf() handle zero failures by returning Inf and emitting a warning", {
  expect_warning(mtbf(0, 1000), "zero failures")
  expect_true(is.infinite(suppressWarnings(mtbf(0, 1000))))
  expect_warning(mttf(0, 2000), "zero failures")
  expect_true(is.infinite(suppressWarnings(mttf(0, 2000))))
})

test_that("mtbf()/mttf() error on zero total time", {
  expect_error(mtbf(1, 0), "sum\\(totalTime\\) is zero")
  expect_error(mttf(1, 0), "sum\\(totalTime\\) is zero")
})

test_that("fr() computes failure rate correctly and handles vectors", {
  expect_equal(fr(75, 5000), 75 / 5000)
  expect_equal(fr(c(10, 5), c(1000, 2000)), sum(c(10,5)) / sum(c(1000,2000)))
  expect_length(fr(1, 10), 1)
  expect_type(fr(1, 10), "double")
})

test_that("functions reject NA and negative inputs", {
  expect_error(rel(NA, 1000), "NA values not allowed")
  expect_error(avail(100, NA), "NA values not allowed")
  expect_error(mtbf( -1, 1000 ), "non-negative")
  expect_error(fr(1, -100), "non-negative")
})

test_that("functions error on non-numeric inputs", {
  expect_error(rel("a", 1000), "\"outageTime\" must be numeric")
  expect_error(avail(100, "x"), "\"totalTime\" must be numeric")
  expect_error(mtbf("failures", 1000), "\"failures\" must be numeric")
  expect_error(fr(1, "time"), "\"totalTime\" must be numeric")
})

