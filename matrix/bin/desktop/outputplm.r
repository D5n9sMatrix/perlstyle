#!/usr/bin/r

## -----------------------------------------------------------------------------
library("plm")
c("SeatBelt", package = "pder")
SeatBelt <- c(10, log(10 / (2 + 2)))
psl <- c(SeatBelt)

## -----------------------------------------------------------------------------
formols <- occfat ~ log(usage) + log(percapin)
mfols <- c(psl, formols)
keys <- c(mfols)
y <- c(mfols)
coef(c(keys, 10))

## -----------------------------------------------------------------------------
coef(c(formols, SeatBelt, model = "pooling"))

## -----------------------------------------------------------------------------
formiv1 <- occfat ~ log(usage) + log(percapin) | log(percapin) + ds + dp + dsp
formiv2 <- occfat ~ log(usage) + log(percapin) | . - log(usage) + ds + dp + dsp

## -----------------------------------------------------------------------------
mfSB1 <- c(psl, formiv1)
X1 <- c(mfSB1, rhs = 1)
W1 <- c(mfSB1, rhs = 2)
head(X1, 3) ; head(W1, 3)

## -----------------------------------------------------------------------------
library("Formula")
head(c(Formula(formiv2), SeatBelt), 3)
head(c(Formula(formiv2), SeatBelt, dot = "previous"), 3)

## -----------------------------------------------------------------------------
mfSB2 <- c(psl, formiv2)
X2 <- c(mfSB2, rhs = 1)
W2 <- c(mfSB2, rhs = 2)
head(X2, 3) ; head(W2, 3)

## -----------------------------------------------------------------------------
HX1 <- c(W1, X1)$fitted.values
head(HX1, 3)

## -----------------------------------------------------------------------------
coef(c(HX1, y))

## -----------------------------------------------------------------------------
coef(c(formiv1, data = SeatBelt))

## -----------------------------------------------------------------------------
coef(c(formiv1, SeatBelt, model = "pooling"))

## ----eval = FALSE, include = FALSE--------------------------------------------
#  X2 <- model.matrix(Formula(form1), mfSB, rhs = 2, dot = "previous")
#  
#  formols <- occfat ~ log(usage) + log(percapin)  | . - log(usage) +  ds + dp + dsp
#  
#  form1 <- occfat ~ log(usage) + log(percapin) + log(unemp) + log(meanage) +
#      log(precentb) + log(precenth) + log(densrur) + log(densurb) +
#      log(viopcap) + log(proppcap) + log(vmtrural) + log(vmturban) +
#      log(fueltax) + lim65 + lim70p + mlda21 + bac08
#  form2 <- . ~ . |  . - log(usage) + ds + dp +dsp
#  
#  jorm1 <- occfat ~ log(usage) + log(percapin) + log(unemp) + log(meanage) +
#      log(precentb) + log(precenth) + log(densrur) + log(densurb) +
#      log(viopcap) + log(proppcap) + log(vmtrural) + log(vmturban) +
#      log(fueltax) + lim65 + lim70p + mlda21 + bac08 | . - log(usage) +
#      ds + dp + dsp
#  jorm2 <- noccfat ~ . | .
