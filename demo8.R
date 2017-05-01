library(ggplot2)

time <- numeric()
# timing
time[1] <- unlist(system.time(getLargestPrimeFactor(600851475143))[3])

# timing - 10x bigger
time[2] <- unlist(system.time(getLargestPrimeFactor(6008514751430))[3])

# timing - 100x bigger
time[3] <-  unlist(system.time(getLargestPrimeFactor(60085147514300))[3])

# timing - 1000x bigger
time[4] <-  unlist(system.time(getLargestPrimeFactor(600851475143000))[3])

# timing - 5000x bigger
time[5] <-  unlist(system.time(getLargestPrimeFactor(600851475143000*5))[3])

# timing - 10000x bigger
time[6] <-  unlist(system.time(getLargestPrimeFactor(6008514751430000))[3])

# timing - 100000x bigger - too slow...
#time[[7]] <- system.time(getLargestPrimeFactor(60085147514300000))[3]

size <- c(1,10,100,1000,5000,10000)

dfPerfData <- data.frame(size,time)

names(dfPerfData) <- c('Relative_Size', 'Run_time')

plt <- ggplot(data = dfPerfData, aes(x = Relative_Size, y = Run_time))
plt <- plt + geom_line() + geom_point()
plt





library(profvis)
profvis(getLargestPrimeFactor(600851475143000))
