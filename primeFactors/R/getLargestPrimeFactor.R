#' Returns the largest prime factors of a number
#'
#' \code{getLargestPrimeFactor} returns the largest prime factor of \code{x}
#' 
#' This function is just a wrapper using the \code{\link{getPrimeFactors}} function to generate
#' all prime factors of \code{x} and then returns the largest
#'  
#' @param x An integer to generate the largest prime factor for
#' 
#' @export
#'  
#' @examples
#' getLargestPrimeFactor(21)

getLargestPrimeFactor <- function(x) {
  
  # Good practise to check input validity - aim for the package to fail gracefully!
  if(!is.numeric(x) || x%%1!=0 || x < 1) {
    stop("getLargestPrimeFactor can only be called with a positive integer")
  }
  
  primeFcts <- getPrimeFactors(x)
  return(max(primeFcts))
  
}
