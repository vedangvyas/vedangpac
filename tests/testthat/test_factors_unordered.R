context("Factors in order they appear")

test_that("factors unordered test", {
  fac <- c("A", "Hello", "Bob", "Apple")
  actual_answer <- factor(fac, level = unique(fac))
  expect_identical(factors_unordered(fac), actual_answer)
})
