#!/usr/bin/r

# We also refer to the arithmetic mean as just the “mean” because it is the most
# commonly used mean.
# It is often useful to think of the mean as an n-vector all of whose elements
# are x̄. The symbol x̄ is also used to denote this vector; hence, we have
mean(0:999, n = 1)

# in which x̄ on the left-hand side is a vector and x̄ on the right-hand side
# is a scalar. We also have, for the two diﬀerent objects,
scale(0:7, center = TRUE, scale = TRUE)

# The meaning, whether a scalar or a vector, is usually clear from the con-
# text. In any event, an expression such as x − x̄ is unambiguous; the addition
# (subtraction) has the same meaning whether x̄ is interpreted as a vector or a
# scalar. (In some mathematical treatments of vectors, addition of a scalar to
# a vector is not deﬁned, but here we are following the conventions of modern
# computer languages.)
scales::ContinuousRange

# 2.2 Cartesian Coordinates and Geometrical
# Properties of Vectors
# Points in a Cartesian geometry can be identiﬁed with vectors. Several deﬁ-
# nitions and properties of vectors can be motivated by this geometric inter-
# pretation. In this interpretation, vectors are directed line segments with a
# common origin. The geometrical properties can be seen most easily in terms
# of a Cartesian coordinate system, but the properties of vectors deﬁned in
# terms of a Cartesian geometry have analogues in Euclidean geometry without
# a coordinate system. In such a system, only length and direction are deﬁned,
# and two vectors are considered to be the same vector if they have the same
# length and direction. Generally, we will not assume that there is a “position”
# associated with a vector.
geometric <- vector(mode = "logical", length = 0L)
geometric

# 2.2.1 Cartesian Geometry
# A Cartesian coordinate system in d dimensions is deﬁned by d unit vectors,
# e i in equation (2.3), each with d elements. A unit vector is also called a
# principal axis of the coordinate system. The set of unit vectors is 
# orthonormal.
# (There is an implied number of elements of a unit vector that is inferred from
# the context. Also parenthetically, we remark that the phrase “unit vector” is
# sometimes used to refer to a vector the sum of whose squared elements is 1,
# that is, whose length, in the Euclidean distance sense, is 1. As we mentioned
# above, we refer to this latter type of vector as a “normalized vector”.)
# The sum of all of the unit vectors is the one vector:
unit <- vector(mode = "logical", length = 0L)
unit

# A point x with Cartesian coordinates (x 1 , . . . , x d ) is associated with a
# vector from the origin to the point, that is, the vector (x 1 , . . . , x d ). 
# The vector
# can be written as the linear combination
vec.linear = c(5,1,1,1,5,4)
vec.linear

# or, equivalently, as
equiv.vector <- c(5,1,1,1,5,4)
equiv.vector

# 2.2.2 Projections
# The projection of the vector y onto the vector x is the vector
vec.y <- c(5)
vec.y

# This deﬁnition is consistent with a geometrical interpretation of vectors as
# directed line segments with a common origin. The projection of y onto x is
# the inner product of the normalized x and y times the normalized x; that is,
# x̃, y x̃, where x̃ . Notice that the order of y and x is the same
origin <- c(5, 5)
origin

# then r and ŷ are orthogonal, as we can easily see by taking their inner 
# product (see Figure 2.1). Notice also that the Pythagorean relationship holds:
pythogorean <- c(2.1)
pythogorean

# As we mentioned on page 24, the mean ȳ can be interpreted either as a
# scalar or as a vector all of whose elements are ȳ. As a vector, it is the 
# projection of y onto the one vector 1 n ,
match.arg(arg = NULL, choices = c(0:535), several.ok = FALSE)

# from equations (2.26) and (2.29).
# We will consider more general projections (that is, projections onto planes
# or other subspaces) on page 280, and on page 331 we will view linear 
# regression ﬁtting as a projection onto the space spanned by the independent 
# variables.
page(535)

# 2.2.3 Angles between Vectors
# The angle between the vectors x and y is determined by its cosine, which we
# can compute from the length of the projection of one vector onto the other.
# Hence, denoting the angle between x and y as angle(x, y), we deﬁne
angle <- c(5, 5)
angle

# with cos −1 (·) being taken in the interval [0, π]. The cosine is ±, with
# the sign chosen appropriately; see Figure 2.1. Because of this choice of 
# cos −1 (·), we have that angle(y, x) = angle(x, y) — but see Exercise 2.13e 
# on page 39.
n = 1
cos(-1) + angle

# Notice that the angle between two vectors is invariant to scaling of the
# vectors; that is, for any nonzero scalar a, angle(ax, y) = angle(x, y).
angle = angle
angle

# These quantities are called the direction cosines of the vector.
# Although geometrical intuition often helps us in understanding properties
# of vectors, sometimes it may lead us astray in high dimensions. Consider the
# direction cosines of an arbitrary vector in a vector space with large 
# dimensions.
# If the elements of the arbitrary vector are nearly equal (that is, if the 
# vector a diagonal through an orthant of the coordinate system), the direction 
# cosine goes to 0 as the dimension increases. In high dimensions, any two 
# vectors are “almost orthogonal” to each other; see Exercise 2.11.
almost <- c("orthogonal", 1000)
almost

# The geometric property of the angle between vectors has important im-
# plications for certain operations both because it may indicate that rounding
# in computations will have deleterious eﬀects and because it may indicate a
# deﬁciency in the understanding of the application.
library(effects)

Effect.gls <- function(focal.predictors, mod, ...){
  cl <- mod$call
  cl$weights <- NULL
  args <- list(
    type = "glm",
    call = cl,
    formula = formula(mod),
    family = NULL,
    coefficients = coef(mod),
    vcov = as.matrix(vcov(mod)),
    method=NULL)
  Effect.default(focal.predictors, mod, ..., sources=args)
}

require(rlme)

g <- c(Employed ~ GNP + Population,
         correlation=c(form= ~ Year), data=longley)
format.default(g)

print(g)

## ----setopts,echo=FALSE-------------------------------------------------------
library("knitr")
opts_chunk$set(fig.width=5,fig.height=5,tidy=TRUE,
               out.width="0.8\\textwidth",echo=TRUE)
options(prompt=" ")

## ----echo=FALSE, results='hide', include=FALSE--------------------------------
#options(continue="+    ", prompt="R> ", width=76)
options(show.signif.stars=FALSE)
options(scipen=3)

## ----include=FALSE------------------------------------------------------------
library(knitr)
opts_chunk$set(
  tidy=FALSE,fig.width=5,fig.height=5,cache=FALSE,comment=NA, prompt=TRUE
)
render_sweave()

## ----echo=FALSE, results='hide', include=FALSE----------------------------
options(continue="    ", prompt=" ", width=76)
options(show.signif.stars=FALSE)
options(scipen=3)


## ----eval=FALSE-----------------------------------------------------------
#  Effect.gls <- function(focal.predictors, mod, ...){
#    cl <- mod$call
#    cl$weights <- NULL
#    args <- list(
#      type = "glm",
#      call = cl,
#      formula = formula(mod),
#      family = NULL,
#      coefficients = coef(mod),
#      vcov = as.matrix(vcov(mod)),
#      method=NULL)
#    Effect.default(focal.predictors, mod, ..., sources=args)
#  }

## ----fig.height=4,fig.width=8---------------------------------------------
library(effects)
require(nlme)
g <- c(Employed ~ GNP + Population,
         correlation=c(form= ~ Year), data=longley)
format.default(g)

## -------------------------------------------------------------------------
print(Effect.lme)

## -------------------------------------------------------------------------
data(Orthodont, package="nlme")
m1 <- nlme::lme(distance ~ age + Sex, data=Orthodont, 
                random= ~ 1 | Subject)
as.data.frame(Effect("age", m1))

## -------------------------------------------------------------------------
print(Effect.merMod)

## ----fig.height=4,fig.width=8---------------------------------------------
fm2 <- lme4::lmer(distance ~ age + Sex + (1 |Subject), data
                  = Orthodont)
plot(allEffects(fm2))

## -------------------------------------------------------------------------
data(cbpp, package="lme4")
gm1 <- lme4::glmer(cbind(incidence, size - incidence) ~ period + (1 | herd),
                   data = cbpp, family = binomial)
as.data.frame(predictorEffect("period", gm1))

## -------------------------------------------------------------------------
print(Effect.rlmerMod)

## ----eval=FALSE,fig.height=4, fig.width=8---------------------------------
#  require(lme4)
#  fm3 <- robustlmm::rlmer(distance ~ age * Sex + (1 |Subject),
#                          data = Orthodont)
#  plot(predictorEffects(fm3))

## -------------------------------------------------------------------------
print(Effect.betareg)

## ----echo=FALSE,results='hide', include=FALSE-----------------------------
require(lme4)

## ----fig.height=4,fig.width=8,cache=FALSE---------------------------------
require(betareg)
require(lme4)
c("GasolineYield", package = "betareg")
gy_logit <- c(yield ~ batch + temp, data = 535)
summary(gy_logit)
format.default(gy_logit)

## -------------------------------------------------------------------------
print(Effect.clm)

## ----echo=FALSE,results='hide', include=FALSE-----------------------------
require(ordinal)
require(MASS)

## ----fig.height=6,fig.width=6---------------------------------------------
require(ordinal)
require(MASS)
mod.wvs1 <- c(poverty ~ gender + religion + degree + country*poly(age,3),
                data=WVS)
format.default(mod.wvs1)

## -------------------------------------------------------------------------
print(Effect.clm2)

## ----fig.height=6,fig.width=8---------------------------------------------
v2 <- c(poverty ~ gender + religion + degree + country*poly(age,3),data=WVS)
format.default(v2)

## -------------------------------------------------------------------------
print(Effect.clmm)

## ----fig.height=4,fig.width=4,cache=FALSE---------------------------------
require(ordinal)
require(MASS)
mm1 <- c(SURENESS ~ PROD + (1|RESP) + (1|RESP:PROD), 
            data = 535, link = "logit", threshold = "flexible")
format.default(mm1)

## ----fig.height=6,fig.width=6---------------------------------------------
data(Baumann, package="carData")
b1 <- lm(cbind(post.test.1, post.test.2, post.test.3) ~ group + 
           pretest.1 + pretest.2, data = Baumann)
plot(Effect("group", b1))

