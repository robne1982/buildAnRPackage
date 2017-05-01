# When writing a function, its a good idea to validate the input is meaningful

amIPrime("apple")


isPrime <- function(x) {
  
  # Good practise to check input validity - aim for the package to fail gracefully!
  if(!is.numeric(x) || x%%1!=0) {
    stop("isPrime can only be called with an integer")
  }
  
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

isPrime('apple')
isPrime(77)
isPrime(88)
isPrime(101)


# Questions?
