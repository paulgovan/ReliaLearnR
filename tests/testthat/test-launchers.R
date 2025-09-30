
test_that("lda calls learnr::run_tutorial with expected args", {
  # Create a mock that returns a sentinel value so lda() returns something predictable
  m <- mockery::mock("LAUNCHED")

  # Replace calls to learnr::run_tutorial inside lda() with our mock.
  # Note: mockery::stub() accepts namespaced targets like "learnr::run_tutorial".
  mockery::stub(lda, "learnr::run_tutorial", m)

  # Call the function under test (the stub prevents the real tutorial from launching)
  res <- lda()

  # Assertions about the mock:
  mockery::expect_called(m, 1)                                # called exactly once
  mockery::expect_call(m, 1, m("lda", package = "ReliaLearnR")) # exact call (positional + named)
  expect_equal(res, "LAUNCHED")
})

test_that("lda is safe to call in non-interactive (CI) environments when stubbed", {
  m <- mockery::mock(NULL)
  mockery::stub(lda, "learnr::run_tutorial", m)

  # Should not error or produce side-effects (mock prevents launch)
  expect_silent(lda())
  mockery::expect_called(m, 1)
})

