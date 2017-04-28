library(primeFactors)
context("Get factors")

test_that("getFactors returns the correct number of factors",{
  expect_length(getFactors(1),1)
  expect_length(getFactors(2),2)
  expect_length(getFactors(12),6)
})

test_that("getFactors returns the correct factors",{
  expect_equal(sort(getFactors(10)),c(1,2,5,10))
  expect_equal(sort(getFactors(1)), c(1))
  expect_equal(sort(getFactors(2)), c(1,2))
})

test_that("getFactors errors at bad input",{
  expect_error(getFactors("hello"))
  expect_error(getFactors(as.factor(1)))
})
