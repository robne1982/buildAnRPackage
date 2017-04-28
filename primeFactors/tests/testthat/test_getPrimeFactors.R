library(primeFactors)
context("getPrimeFactors")

test_that("getPrimeFactors gets prime factors",{
  expect_equal(sort(getPrimeFactors(21)),c(3,7))
  expect_equal(getPrimeFactors(7),c(7))
})

test_that("getPrimeFactors errors on bad input",{
  expect_error(getPrimeFactors("hello"))
  expect_error(getPrimeFactors(as.factor(4)))
})

test_that("getPrimeFactors returns an empty vector if there aren't any prime factors",{
  expect_length(getPrimeFactors(1),0)
})
