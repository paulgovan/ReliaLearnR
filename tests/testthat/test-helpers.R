
test_that("rel() and avail() handle boundary cases correctly", {
  # outage = total -> reliability = 0
  expect_equal(rel(500, 500), 0)
  # unavail = 0 -> availability = 1
  expect_equal(avail(0, 500), 1)
  # tiny floating point overdrawn outage (clamped to 0)
  expect_equal(rel(100.0001, 100), 0)
  # tiny floating point negative (clamped to 1)
  expect_equal(avail(1e-12, 100), 1)
})

test_that("rel() and avail() error when totalTime sums to zero", {
  expect_error(rel(1, 0), "sum\\(totalTime\\) is zero")
  expect_error(avail(1, 0), "sum\\(totalTime\\) is zero")
  # also with vectors summing to zero
  expect_error(rel(c(1,2), c(0, -2)), "times must be non-negative")
})

test_that("mtbf()/mttf() handle vector zero failures properly", {
  expect_warning(mtbf(c(0,0), c(100,200)), "zero failures")
  expect_true(is.infinite(suppressWarnings(mtbf(c(0,0), c(100,200)))))
  expect_warning(mttf(c(0,0), c(50,150)), "zero failures")
  expect_true(is.infinite(suppressWarnings(mttf(c(0,0), c(50,150)))))
})

test_that("fr() errors when total time is zero", {
  expect_error(fr(1, 0), "sum\\(totalTime\\) is zero")
  expect_error(fr(c(1,2), c(0,0)), "sum\\(totalTime\\) is zero")
})

test_that("all functions accept numeric vectors and collapse correctly", {
  expect_equal(rel(c(10,10), c(50,50)), 1 - (20 / 100))
  expect_equal(avail(c(1,1,1), c(10,10,10)), 1 - (3 / 30))
  expect_equal(mtbf(c(1,2), c(50,150)), 200 / 3)
  expect_equal(mttf(c(2,2), c(100,100)), 200 / 4)
  expect_equal(fr(c(1,2,3), c(10,10,20)), 6 / 40)
})
