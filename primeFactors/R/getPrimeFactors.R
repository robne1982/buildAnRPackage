#' Returns the prime factors of a number
#'
#' \code{getPrimeFactors} returns a vector containing all prime factors of \code{x}
#' 
#' This function is just a wrapper using \code{\link{getFactors}} and 
#' \code{\link{isPrime}} functions. It uses \code{\link{getFactors}} to get all factors and
#' \code{\link{isPrime}} to return only those that are prime.
#'  
#' @export
#'  
#' @param x An integer to generate the prime factors for
#'  
#' @examples
#' getPrimeFactors(21)
#' getPrimeFactors(7)

getPrimeFactors <- function(x) {
  
  # Good practise to check input validity - aim for the package to fail gracefully!
  if(!is.numeric(x) || x%%1!=0 || x < 1) {
    stop("getPrimeFactors can only be called with a positive integer")
  }
  
  fcts <- getFactors(x)
  
  primeFcts <- unlist(lapply(fcts, isPrime))
  
  return(fcts[primeFcts])
  
}
