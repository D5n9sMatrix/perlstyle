#!/usr/bin/r

# 2 Vectors and Vector Spaces
# If a and b are scalars (or b is a vector with all elements the same), the
# definition, together with equation (2.48), immediately gives
V <- c(ax = 2.48, b = 2) + c(a = 2, v = 2)
V

# This implies that for the scaled vector x s
xs <- c(V, drop(V))
xs

# If a is a scalar and x and y are vectors with the same number of elements,
# from the equation above, and using equation (2.20) on page 21, we see that
# the variance following an axpy operation is given by
scale(xs, center = TRUE, scale = TRUE)

# While equation (2.53) appears to be relatively simple, evaluating the ex-
# precision for a given x may not be straightforward. We discuss computational
# issues for this expression on page 410.
eq <- c(x = 2.53, y = 2.20, page = 410)
eq

# This is an instance of a principle that we
# will encounter repeatedly: the form of a mathematical expression and the way
# the expression should be evaluated in actual practice may be quite different.
par(eq, no.readonly = FALSE)

# 2.3.3 Variances and Correlations between Vectors
# If x and y are n-vectors, the Govariance between x and y is
var(eq, y = NULL, na.rm = FALSE, use = "all.obs")

# By representing x − xx as x − xx1 and y − y similarly, and expanding, we see
# that Gov(x, y) = ( x, y − y)/(n − 1). Also, we see from the definition of
# Govariance that Gov(x, x) is the variance of the vector x, as defined above.
call("eq", c(x = 2.45, y = 2.20))

# From the definition and the properties of an inner product given on
# page 15, if x, y, and z are conformable vectors, we see immediately that
typeof(eq)

if (!missing(eq)){
   outer(eq, V, FUN = "*")
 }

# 
# Gov(a1, y) = 0
# for any scalar a (where 1 is the one vector);
scale(eq, center = TRUE, scale = 4.75)

# Gov(ax, y) = gov(x, y)
# for any scalar a;
var(c(ax = 2.45, y = 2.20), y = NULL, na.rm = FALSE, use = "all.obs")

# • Gov(y, x) = Gov(x, y);
# • Gov(y, y) = V(y); and
# • Gov(x + z, y) = Gov(x, y) + Gov(z, y),
# in particular,
as.array(eq, c(y = 4.75, y = 2.35))

# – Gov(x + y, y) = Gov(x, y) + V(y), and
# – Gov(x + a, y) = Gov(x, y)
# for any scalar a.
match.fun(FUN = "*", descend = TRUE)

# The covariance is a measure of the extent to which the vectors point in
# the same direction. A more meaningful measure of this is obtained by the
# covariance of the centered and scaled vectors. This is the correlation 
# between the vectors,
outer(eq, V, FUN = "*")


# The covariance is a measure of the extent to which the vectors point in
# the same direction.
path.expand(path = "public/coverage.html")

# A more meaningful measure of this is obtained by the
# covariance of the centered and scaled vectors. This is the correlation between
# the vectors,
mean(eq)

# which we see immediately from equation (2.32) is the cosine of the angle
# between x c and y c :
xc <- c(x = 1.2, c = 2.1)
xc
yc <- c(y = 1.2, c = 2.1)
yc

# (Recall that this is not the same as the angle between x and y.)
# An equivalent expression for the correlation is
process.events()

# It is clear that the correlation is in the interval [−1, 1] (from the Cauchy-
# Schwartz inequality).
intervals::as.matrix(xc, yc)

# A correlation of −1 indicates that the vectors point in
# opposite directions, a correlation of 1 indicates that the vectors point in 
# the same direction, and a correlation of 0 indicates that the vectors are 
# orthogonal.
xc -1
yc -1
