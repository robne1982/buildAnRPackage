library(primeFactors)
context("isPrime")

test_that("isPrime returns true for prime numbers",{
  expect_true(isPrime(2))
  expect_true(isPrime(3))
  expect_true(isPrime(7))
})

test_that("isPrime returns false for numbers that aren't prime",{
  expect_false(isPrime(0))
  expect_false(isPrime(-1))
  expect_false(isPrime(1))
  expect_false(isPrime(4))
  expect_false(isPrime(9))
  expect_false(isPrime(49))
})

test_that("isPrime errors on bad input",{
  expect_error(isPrime("cat"))
  expect_error(isPrime(as.factor(2)))
})
