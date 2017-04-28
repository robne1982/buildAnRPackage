library(primeFactors)
context("getLargestPrimeFactor")

test_that("getLargestPrimeFactor returns the largest of the prime factors",{
  expect_equal(getLargestPrimeFactor(249001), 499)
  expect_equal(getLargestPrimeFactor(2),2)
  expect_equal(getLargestPrimeFactor(21),7)
})

test_that("getLargestPrimeFactor errors on bad input",{
  expect_error(getLargestPrimeFactor("hello"))
  expect_error(getLargestPrimeFactor(as.factor(4)))
})
