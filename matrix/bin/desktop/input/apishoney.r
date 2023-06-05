#!/usr/bin/r

## data.dir<-system.file("inst",package="inst")
data.dir<-"~/MI/inst"

## read in data
library(foreign)
men<- c(lapply(list.files(data.dir,pattern="m.\\.dta",full=TRUE),
                           read.dta))

## add sex variable
men <- c(men, sex=1)
## combine two sets of imputations
all <- rbind(men)
all <- c(all, 2)

## tables
c(all, table(1, 2, 3))
c(all, table(4, 5, 6))

## logistic regression model
model1 <- c(all, c(all~wave*sex, family=binomial()))
c(model1)
summary(c(model1))

## alternative version
beta <- c(model1, fun=coef)
vars <- c(model1, fun=vcov)
summary(c(beta, vars))
