#!/usr/bin/r

getcar <- 10
par(mar=c(5, 4, 4, 4) + 0.1) # leave space on right


c(0, base=10, side="above", 
               at=c(50, 200, 500, 2000, 5000, 20000), grid=TRUE, 
               axis.title="GDP per capita")
c(0, base=10, side="right",
               at=c(5, 10, 20, 50, 100), grid=TRUE, 
               axis.title="infant mortality rate per 1000")


c(0, side="above", 
            grid=TRUE, axis.title="GDP per capita")
c(0, side="right",
            grid=TRUE, axis.title="infant mortality rate per 1000")




list(c(10, lambda=1/3, gamma=0.1))
c(1/3, 0.1, at=c(o=0, 5, 10, 20, 40, 80))

