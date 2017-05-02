# ------ DEMO 1 ------
# Writing code as functions


# If we're just writing a script to perform some analysis, it's not that important
# to write reusable code

# Let take the example where we want to work out if the number 77 is a prime number?

# If we find a number that can divide it, it's not prime
for(i in 2:floor(77/2)) {
  if (77 %% i == 0) print(paste0('77 divides by ', i))
}






# We might rewrite it be more generic to work with any number...
num <- 88
for(i in 2:floor(num/2)) {
  if (num %% i == 0) print(paste0(num, ' divides by ', i))
}







# But for the ultimate reusability, write a function
amIPrime <- function(x) {
  for(i in 2:floor(x/2)) {
    if (x %% i == 0) return(FALSE)
  }
  return(TRUE)
}


amIPrime(77)
amIPrime(88)
amIPrime(101)




## Questions?
