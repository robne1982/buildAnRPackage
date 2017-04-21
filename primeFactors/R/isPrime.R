#' Determines if a number is a prime
#'
#' \code{isPrime} returns \code{TRUE} if \code{x} is a prime, or \code{FALSE} if not
#'
#' This algorith uses the simple approach. Given an input number n, check whether any 
#' prime integer m from 2 to √n evenly divides n (the division leaves no remainder). 
#' If n is divisible by any m then n is composite, otherwise it is prime. See 
#' \href{https://en.wikipedia.org/wiki/Primality_test}{Wikipedia} for further details.
#' 
#'  @param x An integer to test for primality
#'  
#' @examples
#' isPrime(10)
#' isPrime(7)
isPrime <- function(x) {
  
  # First, take some shortcuts
  # If our number is <=1 it is not prime
  if (x <= 1) {
    return(FALSE)
  } 
  # But if its 2 or 3, it is prime
  else if (x <= 3) {
    return(TRUE)
  }
  # Time saving check - if it divides by 2 or 3, its not prime
  # Note that %% is the modulo operator
  else if (x %% 2 == 0 || x %% 3 == 0) {
    return(FALSE)
  }
  # Otherwise we have to do this the hard way, looping over
  # numbers from sqrt(x) to 4. Note we have already covered 2 and 3 above
  else {
    # Loop from root(x) to 4 descending by 1 each time
    for(i in floor(sqrt(x)):4 ) {
      # If we find any divisors without remainder, it is not a prime
      if (x %% i == 0) return(FALSE)
    }
    # If we get here, we've exhaused all possible divisors, and the number is prime
    return(TRUE)
  }
  
}