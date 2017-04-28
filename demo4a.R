library(roxygen2)
library(devtools)

# run once
#getwd()
#devtools::create("./primeFactors")
setwd("./primeFactors/")

devtools::load_all()
devtools::test()
devtools::document()
devtools::build()


getFactors(64)
getFactors(21)

getPrimeFactors(64)
getPrimeFactors(21)

getLargestPrimeFactor(64)
getLargestPrimeFactor(21)

# And to solve Euler Q3
getLargestPrimeFactor(600851475143)
