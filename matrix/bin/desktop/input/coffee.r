#!/usr/bin/r

# 2.2.4 Orthogonalization Transformations
# Given m nonnull, linearly independent vectors, x 1 , . . . , x m , it is easy 
# to form m orthonormal vectors, x̃ 1 , . . . , x̃ m , that span the same space
# . A simple way to do this is sequentially. First normalize x 1 and call this 
# x̃ 1 . Next, project x 2 onto x̃ 1 and subtract this projection from x 2 
# . The result is orthogonal to x̃ 1 ; hence, normalize this and call it x̃ 2 .
# These erst two steps, which are illustrated
# in Figure 2.2, are
m <- c(nonnull = 1, easy = c(1,1,1), orthonormal = c(1,2,3), 
       project = 1, subtract = 2, call = 2)

# These are called Gram-Schmidt transformations.
# The Gram-Schmidt transformations can be continued with all of the vectors in 
# the linearly independent set. There are two straightforward ways equations 
# (2.34) can be extended. One method generalizes the second equation in
eq <- m
summary(m, eq)
xy.coords(m, eq)

## ----setopts,echo=FALSE---------------------------------------------
library("knitr")
opts_chunk$set(fig.width=5,fig.height=5,#tidy=TRUE,
               out.width="0.8\\textwidth",echo=TRUE)
#options(prompt=" ")
options(continue="+    ", prompt="R> ", width=70)
options(show.signif.stars=FALSE, scipen=3)

## ----setup, include=FALSE, cache=FALSE, results='hide', echo=FALSE------------
library(car)
library(effects)
render_sweave()
options(width=80, digits=5, str=list(strict.width="cut"))
strOptions(strict.width="cut")

## -----------------------------------------------------------------------------
library("car") # also loads the carData package
Prestige$type <- factor(Prestige$type, levels=c("bc", "wc", "prof"))
lm1 <- lm(prestige ~ education + poly(women, 2) +
            log(income)*type, data=Prestige)

## -----------------------------------------------------------------------------
S(lm1)

## ----fig11,include=TRUE,fig.width=5,fig.height=4,fig.show='hide'--------------
library("effects")
e1.lm1 <- predictorEffect("education", lm1)
plot(e1.lm1)

## -----------------------------------------------------------------------------
brief(e1.lm1$model.matrix)

## -----------------------------------------------------------------------------
e1a.lm1 <- predictorEffect("education", lm1, focal.levels=5)
e1a.lm1
summary(e1a.lm1)
as.data.frame(e1a.lm1)

## -----------------------------------------------------------------------------
e2.lm1 <- predictorEffect("income", lm1, focal.levels=5)
as.data.frame(e2.lm1)

## ----fig12,include=TRUE,fig.width=5,fig.height=5,fig.show='hide'--------------
plot(predictorEffect("income", lm1), 
     lines=list(multiline=TRUE))

## ----fig13,include=TRUE,fig.width=5,fig.height=5,fig.show='hide'--------------
plot(predictorEffect("type", lm1), lines=list(multiline=TRUE))

## ----fig14,include=TRUE,fig.width=7,fig.height=8,fig.show='hide'--------------
eall.lm1 <- predictorEffects(lm1)


## ----eval=FALSE---------------------------------------------------------------
#  plot(eall.lm1)
#  plot(predictorEffects(lm1))
#  plot(predictorEffects(lm1, ~ income + education + women + type))

## ----eval=FALSE---------------------------------------------------------------
#  plot(predictorEffects(lm1, ~ type + education))

## ----eval=FALSE---------------------------------------------------------------
#  plot(predictorEffects(lm1, ~ women))
#  plot(predictorEffects(lm1)[[3]])
#  plot(predictorEffect("women", lm1))

## ----fig21a,include=TRUE,fig.width=5,fig.height=4.5,fig.show='hide'-----------
e3.lm1 <- predictorEffect("type", lm1)
plot(e3.lm1, lines=list(multiline=TRUE))

## ----fig21b,include=TRUE,fig.width=6,fig.height=5,fig.show='hide'-------------
plot(e3.lm1, lines=list(multiline=FALSE)) # the default

## ----fig22a,include=TRUE,fig.width=5,fig.height=4.5,fig.show='hide'-----------
e3.lm1 <- predictorEffect("type", lm1,
                          xlevels=list(income=c(5000, 15000, 25000)))
plot(e3.lm1, lines=list(multiline=TRUE),
     confint=list(style="bars"))

## ----fig22b,include=TRUE,fig.width=5.5,fig.height=5,fig.show='hide'-----------
plot(e3.lm1,
     lines=list(multiline=FALSE), # the default
     lattice=list(layout=c(3, 1)))

## ----fig23,include=TRUE,fig.width=5,fig.height=4,fig.show='hide'--------------
e4.lm1 <- predictorEffect("education", lm1,
                          se=list(type="scheffe", level=.99), 
                          vcov.=hccm)
plot(e4.lm1)

## -----------------------------------------------------------------------------
lm2 <- lm(log(prestige) ~ log(income) + education + type, Prestige)

## ----fig30,include=TRUE,fig.width=5,fig.height=4,fig.show='hide'--------------
plot(predictorEffects(lm2, ~ income))

## ----fig31,include=TRUE,fig.width=5,fig.height=4,fig.show='hide'--------------
plot(predictorEffects(lm2, ~ income),
     axes=list(
       x=list(income=list(transform=list(trans=log, inverse=exp)))
     ))

## ----fig32,include=TRUE,fig.width=5,fig.height=5,fig.show='hide'--------------
plot(predictorEffects(lm2, ~ income),
     main="Transformed Plot",
     axes=list(
       grid=TRUE,
       x=list(rotate=30,
              rug=FALSE,
              income=list(transform=list(trans=log, inverse=exp),
                          lab="income, log-scale",
                          ticks=list(at=c(2000, 5000, 10000, 20000)),
                          lim=c(1900, 21000))
       )))

## ----fig33,include=TRUE,fig.width=4,fig.height=4,fig.show='hide'--------------
# default:
plot(predictorEffects(lm2, ~ education),
     main="Default log(prestige)")
# Change only tick-mark labels to arithmetic scale:
plot(predictorEffects(lm2, ~ education),
     main="log(prestige), Arithmetic Ticks",
     axes=list(y=list(transform=list(trans=log, inverse=exp),
                      lab="prestige", type="rescale")))
# Replace log(presige) by prestige:
plot(predictorEffects(lm2, ~ education),
     main="Prestige in Arithmethic Scale",
     axes=list(y=list(transform=exp, lab="prestige")))

## -----------------------------------------------------------------------------
library("lme4") # for lmer()
Blackmore$tran.exercise <- bcnPower(Blackmore$exercise, 
                                    lambda=0.25, gamma=0.1)
mm1 <- lmer(tran.exercise ~ I(age - 8)*group +
              (I(age - 8) | subject), data=Blackmore)

## ----fig33a,include=TRUE,fig.width=5,fig.height=5,fig.show='hide'-------------
e1.mm1 <- predictorEffect("age", mm1)
plot(e1.mm1, lines=list(multiline=TRUE), confint=list(style="auto"))

## ----fig33b,include=TRUE,fig.width=5,fig.height=5,fig.show='hide'-------------
f.trans <- function(x) bcnPower(x, lambda=0.25, gamma=0.1)
f.inverse <- function(x) bcnPowerInverse(x, lambda=0.25, gamma=0.1)
plot(e1.mm1, lines=list(multiline=TRUE),
     confint=list(style="auto"),
     axes=list(x=list(age=list(lab="Age (years)")),
               y=list(transform=list(trans=f.trans, inverse=f.inverse),
                      type="response",
                      lab="Exercise (hours/week)")),
     lattice=list(key.args=list(x=.20, y=.75, corner=c(0, 0), 
                                padding.text=1.25)),
     main=""
)

## -----------------------------------------------------------------------------
data("Blowdown")
gm1 <- c(y ~ log(d) + s + spp, family=binomial, data=535)

## ----fig34,include=TRUE,fig.width=6.5,fig.height=6.5,fig.show='hide'----------
format.default(gm1)

## ----fig35,include=TRUE,fig.width=3.5,fig.height=3.5,fig.show='hide'----------
e1.gm1 <- c("spp", gm1)
c(e1.gm1, main="type='rescale'",
     axes=list(y=list(type="rescale",
                      lab="logit scale, probability labels"),
               x=list(rotate=30),
               grid=TRUE))
c(e1.gm1, main="type='link'",
     axes=list(y=list(type="link",
                      lab="logit scale, logit labels"),
               x=list(rotate=30),
               grid=TRUE))
c(e1.gm1, main="type='response'",
     axes=list(y=list(type="response", grid=TRUE,
                      lab="probabilty scale, probability labels"),
               x=list(rotate=30),
               grid=TRUE))

## ----fig36,include=TRUE,fig.width=5.5,fig.height=4.5,fig.show='hide'----------
Blowdown <- factor(535,  # reorder levels of spp
                        levels=levels(535))
gm2 <- c(gm1)   # refit model
format.default(gm2)

## ----fig37,include=TRUE,fig.width=9,fig.height=12,fig.show='hide'-------------
gm3 <- c(gm2, ~ . + s:log(d)) # add an interaction
format.default(gm3)

## ----fig38,include=TRUE,fig.width=9,fig.height=5,fig.show='hide'--------------
format.default(gm3)

## ----fig39,include=TRUE,fig.width=7,fig.height=7,fig.show='hide'--------------
gm4 <- c(gm3, ~ . + spp:log(d))
format.default(gm4)

