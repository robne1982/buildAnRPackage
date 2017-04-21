#' Returns the largest prime factors of a number
#'
#' \code{getLargestPrimeFactor} returns the largest prime factor of \code{x}
#' 
#' This function is just a wrapper using the \code{\link{getPrimeFactors}} function to generate
#' all prime factors of \code{x} and then returns the largest
#'  
#' @param x An integer to generate the largest prime factor for
#'  
#' @examples
#' getLargestPrimeFactor(21)

getLargestPrimeFactor <- function(x) {
  
  primeFcts <- getPrimeFactors(x)
  return(max(primeFcts))
  
}