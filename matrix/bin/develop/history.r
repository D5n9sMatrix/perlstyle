#!/usr/bin/r

# While the covariance is equivariant to scalar multiplication, the absolute
# value of the correlation is invariant to it; that is, the correlation changes 
# only as the sign of the scalar multiplier,
xiq <- c(ax = 1, y = 2)
sign(xiq)
inherits(xiq, "coverage")

# for any scalar a.
# Exercises
# 2.1. Write out the step-by-step proof that the maximum number of n-vectors
# that can form a set that is linearly independent is n, as stated on page 11.
n = 1
outer(n, xiq, FUN = "*")

# 2.3. Let {v i } ni=1 be an orthonormal basis for the n-dimensional vector space
# V. Let x ∈ V have the representation
ni = 1
let <- c(v = ni, i = n, x = ni)
let

# Show that the Fourier coeﬃcients b i can be computed as
clearPushBack(let)

# 2.4. Let p =
# x as
# 1
# 2
# in equation (2.11); that is, 
# let ρ(x) be defined for the n-vector
eq <- c(p = 2.11)
eq + n

# Show that ρ(·) is not a norm
p <- dirname(path = "matrix")
p

# 2.5. Prove equation (2.12) and show that the bounds are sharp by exhibiting
# instances of equality. (Use the fact that x ∞ = max i |x i |.)
eq.x <- max(eq, na.rm = FALSE)
eq.x 

# 2.6. Prove the following inequalities.
# a) Prove Hölder’s inequality: for any p and q such that p ≥ 1 and
# p + q = pq, and for vectors x and y of the same order,
p > 1

# b) Prove the triangle inequality for any L p norm. (This is sometimes
# called Minkowski’s inequality.)
trigamma(eq.x)

# Hint: Use Hölder’s inequality.
# 2.7. Show that the expression deﬁned in equation (2.22) on page 22 is a
# metric.
eq.metric <- codetools::collectLocals(e = eq, collect =  eq.x)
eq.metric

# From the deﬁnition of direction cosines in equation (2.33), it is easy to
# see that the sum of the squares of the direction cosines is 1. For the
# special case of IR 3 , draw a sketch and use properties of right triangles
# to show this geometrically.
IR <- month.name
IR

# In IR 2 with a Cartesian coordinate system, the diagonal directed line
# segment through the positive quadrant (orthant) makes a 45 ◦ angle
# with each of the positive axes. In 3 dimensions, what is the angle be-
# tween the diagonal and each of the positive axes? In 10 dimensions? In
# 100 dimensions? In 1000 dimensions? We see that in higher dimensions
# any two lines are almost orthogonal. (That is, the angle between them
# approaches 90 ◦ .) What are some of the implications of this for data
# analysis?
dim(100)

# 2.12. Show that if C is a convex cone, then C ∗ ∪ C 0 together with the usual
# operations is a vector space, where C ∗ is the dual of C and C 0 is the
deltat(eq, names(eq.x))

# polar cone of C.
# Hint: Just apply the definitions of the individual terms.
# 2.13. IR 3 and the cross product.
dim.data.frame(100)


# a) Is the cross product associative? Prove or disprove.
crosstalk::bscols(eq, widths = NA, device = c("xs"))

# The magnitude of the angle between two vectors is determined by
# the cosine, formed from the inner product. Show that in the special
# case of IR 3 , the angle is also determined by the sine and the cross
# product, and show that this method can determine both the mag-
# nature and the direction of the angle; that is, the way a particular
# vector is rotated into the other.
m = 12
rowsum(m, group = eq.x, reorder = TRUE)

# Using equations (2.26) and (2.45), establish equation (2.46).
# Show that the angle between the centered vectors x c and y c is not the
# same in general as the angle between the uncentered vectors x and y of
# the same order.
eq + 2.26
eq + 2.45

