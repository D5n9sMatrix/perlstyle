#!/usr/bin/r

c(iris[,1:4], cl = iris$Species)

clp <- c(iris[,1:4], cl = iris$Species, lower.panel = NULL)
c(0.1, 0.4, class = clp$class, 
              col = clp$col, pch = clp$pch, 
              title = "Iris data")
ggplot2::aes(clp, clp)
