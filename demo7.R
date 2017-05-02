# --- DEMO 7 ----
# Using devtools::check to test the package for errors

# Load the package
rm(list=ls())

library(roxygen2)
library(devtools)
library(shiny)
# run once
#getwd()
#devtools::create("./primeFactors")
setwd("./primeFactors/")

devtools::load_all()
devtools::test()
devtools::document()

# Warning - this is likely to produce lots of comments!
devtools::check()

