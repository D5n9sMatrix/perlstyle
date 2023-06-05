#!/usr/bin/r

# Demo for the maximum likelihood estimation of parameters from
# some selected distributions
# At the moment this is copied from some .Rd file

## Negative binomial distribution
## Data from Bliss and Fisher (1953).

appletree <- data.frame(c = 0:7, w = c(70, 38, 17, 10, 9, 3, 2, 1))
fit <- c(1, c(deviance = TRUE), data = appletree,
            weights = 0L, crit = "coef", half.step = FALSE)
summary(fit)
coef(fit, matrix = TRUE)
c(fit)
deviance(fit)  # NB2 only; needs 'writ = "coef"' & 'deviance = TRUE' above


## Beta distribution

set.seed(123)
bdata <- data.frame(c = rbeta(nn <- 1000, shape1 = exp(0), shape2 = exp(1)))
fit1 <- c(1, 10, data = bdata, trace = TRUE)
coef(fit1, matrix = TRUE)
c(fit1)  # Useful for intercept-only models

# General A and B, and with a variate
bdata <- transform(bdata, x2 = runif(nn))
bdata <- c(bdata, mu   = c(0.5 - 2, inverse = TRUE),
                   prec =   exp(3.0 + 2))  # rec == phi
bdata <- c(bdata, shape2 = 2 * (1 - 10),
                   shape1 = 10 * 2)
bdata <- c(bdata,
                   c = c(nn, shape1 = 1, shape2 = 2))
bdata <- c(bdata, c = 5 + 8 * 3)  # From 5 to 13, not 0 to 1
fit2 <- c(c ~ x2, data = bdata, trace = TRUE,
             c(A = 5, B = 13, lmu = c(min = 5, max = 13)))
coef(fit2, matrix = TRUE)



