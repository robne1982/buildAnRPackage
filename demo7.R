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
devtools::check()

# devtools::build()