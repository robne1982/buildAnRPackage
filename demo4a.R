# ---- DEMO 4a -----
# Finally, attempt to solve project Euler Q3!

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

# And to solve Euler Q3
getLargestPrimeFactor(600851475143)
