#' Returns a list of the factors of a number
#'
#' \code{getFactors} returns a vector containing all factors of \code{x}
#' 
#' Here we use a simple approach to find all factors of a number. If we're finding factors of 
#' \code{x} then 1 and \code{x} are always factors. We reduce the search space by considering factors
#' as pairs. For example, the factors of 12 are 1, 2, 3, 4, 6 and 12. We can treat these as pairs 
#' of factors that when multiplied, give 12. In this case, our pairs are \code{1 * 12}, \code{2 * 6}
#' and \code{3 * 4}. We only need to find one half of each factor pair, after which we can generate
#' the other factor in the pair.
#' 
#' The approach of finding only one half of each factor pair reduces the factor search space from 
#' \code{1:x/2} to \code{1:sqrt(x)}. 
#' 
#' Note that this is not the most efficient approach to finding prime factors - for example, see
#' \url{http://stackoverflow.com/questions/6800193/what-is-the-most-efficient-way-of-finding-all-the-factors-of-a-number-in-python}
#'  
#' @export
#'  
#' @param x An integer to generate the factors for
#'  
#' @examples
#' getFactors(10)
#' getFactors(64)


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

?getFactors

# Open the .Rd file...
