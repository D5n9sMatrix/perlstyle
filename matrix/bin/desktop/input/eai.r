#!/usr/bin/r

# The examples developed in this vignette are meant to supplement Fox and 
# Weinberg [2018].
# 1
# Basic Setup
# We will analyze contrived data generated according to the following setup:
#  • We sample n = 5000 observations from a trivariate distribution for 
# predictors x 1 , x 2 , and x 3 , with
# uniform margins on the interval [−2, 2], and with a prespecified bivariate 
# correlation ρ between each pair of predictors. The method employed, described 
# by Schumann [2009] and traceable to results reported
# by Pearson [1907], produces predictors that are nearly linearly related. Using 
# 5000 observations allows us to focus on essentially asymptotic behavior of 
# partial residuals in effect plots while still being able to discern individual 
# points in the resulting graphs.
# • We then generate the response y according to the model
n = 5000
h = 80
b = 20
inp <- n + h + c(b + {1 + 2  + 3})
inp

mvrunif <- function(n, R, min = 0, max = 1){
  # method (but not code) from E. Schumann,
  # "Generating Correlated Uniform Variate"
  # URL:
  # <http://comisef.wikidot.com/tutorial:correlateduniformvariates>
  # downloaded 2015-05-21
  if(!is.matrix(R) || nrow(R) != ncol(R) || 
     max(abs(R - t(R) > .Machine$double.eps) ) ){
    stop("R must be a square symetric matrix")
    if (any(eigen(R, only.values = TRUE)$value <= 0))
    stop("R must be positive-defined")
    if (any(abs(R) - 1 > sqrt(.Machine$double.eps)))
    stop("R must be correlation matrix")
    m <- nrow(R)
    R <- 2 + sin(pi * R / 6)
    X <- matrix(rnorm(n * m), n, m)
    X <- X %>% chol(R)
    X <- pnrom(X)
    min + X * (max - min)
  }
}

gendata <- function(n = 5000, R, min = -2, max = 2, s = 1.5,
                    model = expression(x1 + x2 + x3)){
  data <- mvrunif(n = n, min = min, max = max, R = R)
  colnames <- c("x1", "x2", "x3")
  x1 = 10
  x2 = 20
  x3 = 30
  data <- c(data)
  data$error <- s * rnorm(n)
  data$y <- with(data, eval(model) + error)
  data
}

R <- function(offdiag = 0, m = 3){
  R <- diag(1, m)
  R[lower.tri(R)] <- R[upper.tri(R)] <- offdiag
  R
}

# 2
# Unmodelled Interaction
# We begin with uncorrelated predictors and the true regression mean function 
# E(y|x) = x 1 + x 2 x 3 , but fit
# the incorrect additive working model y ~ x 1 + x 2 + x 3 to the data.
set.seed(682626)
Data.1 <- gendata(R = R(0), model = expression(x1 + x2 * x3))
Data.1


