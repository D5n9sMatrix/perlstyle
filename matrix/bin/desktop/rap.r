#!/usr/bin/r

# If a and b are scalars (or b is a vector with all elements the same), the
# definition, together with equation (2.48), immediately gives
V <- c(ax = 1.5, b = 2) + c(a = 2, v = 5)
V

# This implies that for the scaled vector x s ,
xs <- c(V, xs = 1)
xs

# If a is a scalar and x and y are vectors with the same number of elements,
# from the equation above, and using equation (2.20) on page 21, we see that
# the variance following an axpy operation is given by
n = 1
axpy <- c(ax = 2.20, y = 21, a = 2, xc = 5.3, yc = 6.3) / n - 1
axpy

# While equation (2.53) appears to be relatively simple, evaluating the ex-
# pression for a given x may not be straightforward. We discuss computational
# issues for this expression on page 410.
while (axpy) {
  rnorm(n, mean = 0, sd = 1)
}
axpy

# This is an instance of a principle that we
# will encounter repeatedly: the form of a mathematical expression and the way
# the expression should be evaluated in actual practice may be quite diﬀerent.
rep(axpy)

