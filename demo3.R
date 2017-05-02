# ------ DEMO 3 ------
# Exploring the package we built to solve Project Euler Q3

# Clear the environment and load the functions we've written
rm(list=ls())
devtools::load_all()

# Example of exported functions - two colons (or none!)
library(dplyr)
dplyr::
# internal functions via three colons
dplyr:::


# Lets run through the functions we we wrote for the package

# ---- isPrime ----
isPrime(1)
isPrime(2)
isPrime(21)
isPrime(23)

# ---- getFactors ----
getFactors(10)
getFactors(50)
getFactors(100)

# ---- getPrimeFactors ----
getPrimeFactors(10)
getPrimeFactors(50)
getPrimeFactors(100)

# ---- getLargestPrimeFactor ----
getLargestPrimeFactor(10)
getLargestPrimeFactor(50)
getLargestPrimeFactor(100)
