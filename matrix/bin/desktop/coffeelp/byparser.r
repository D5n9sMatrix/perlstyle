#!/usr/bin/r

# Comparison of BayesFactor against other packages
# This R markdown file runs a series of tests to ensure that the BayesFactor 
# package is giving correct answers, and can gracefully handle probable input.
library(arm)
library(lme4)

# ANOVA
# First we generate some data.
# Number of participants
N <- 20
sig2 <- 1
sig2ID <- 1

# 3x3x3 design, with participant as random factor
effects <- expand.grid(A = c("A1", "A2", "A3"),
                       B = c("B1", "B2", "B3"),
                       C = c("C1", "C2", "C3"),
                       ID = paste("Sub", 1:N, sep = ""))
Xdata <- c(N*sig2*sig2ID, data = effects)
beta <- matrix(c(50, -.2, .2, 0, 0, -.1, -.1, rnorm(N-1,0,sqrt(sig2ID)),
                 0,0,0,0,-.1,.1,.1,-.1,0,0,0,0,
                 0,0,0,0,0,0,0,0),
                 ncol = 1)
effects$A = rnorm(sqrt(sig2))
# Typical repeated measures ANOVA
mns <- c(effects$A, list(effects$B, effects$c, effects$ID), mean)
mns
