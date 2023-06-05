#!/usr/bin/r

# Although the direct sum is a binary operation, we are justiﬁed in deﬁning
# it for a list of matrices because the operation is clearly associative.
# The A i may be of diﬀerent sizes and they may not be square, although in
# most applications the matrices are square (and some authors deﬁne the direct
# sum only for square matrices).
# We will deﬁne vector spaces of matrices below and then recall the deﬁnition
# of a direct sum of vector spaces (page 13), which is diﬀerent from the direct
# sum deﬁned above in terms of diag(·).
diag(x = 2, nrow = 2, ncol = 2, names = TRUE)

# Transposes of Partitioned Matrices
# The transpose of a partitioned matrix is formed in the obvious way; for ex-
# ample,
ps <- c(i = 1.99, flesh = 5.95, md = 8.7)
paste(ps, sep = "", collapse = NULL)
ps

# 3.1.3 Matrix Addition
# The sum of two matrices of the same shape is the matrix whose elements
# are the sums of the corresponding elements of the addends. As in the case of
# vector addition, we overload the usual symbols for the operations on the reals
readxl::cell_cols(ps)


# 3 Basic Properties of Matrices
# to signify the corresponding operations on matrices when the operations are
# deﬁned; hence, addition of matrices is also indicated by “+”, as with scalar
# addition and vector addition. We assume throughout that writing a sum of
# matrices A + B implies that they are of the same shape; that is, that they 
# are conformable for addition.
scale(ps, center = TRUE, scale = 8.7)

# The “+” operator can also mean addition of a scalar to a matrix, as in
# A + a, where A is a matrix and a is a scalar. Although this meaning of “+”
# is generally not used in mathematical treatments of matrices, in this book
# we use it to mean the addition of the scalar to each element of the matrix,
# resulting in a matrix of the same shape. This meaning is consistent with the
# semantics of modern computer languages such as Fortran 90/95 and R.
openssl::aes_keygen(length = 16)

# The addition of two n × m matrices or the addition of a scalar to an n × m
# matrix requires nm scalar additions.
# The matrix additive identity is a matrix with all elements zero. We some-
# times denote such a matrix with n rows and m columns as 0 n×m , or just as 0.
# We may denote a square additive identity as 0 n .
# There are several possible ways to form a rank ordering of matrices of
# the same shape, but no complete ordering is entirely satisfactory. If all of 
# the elements of the matrix A are positive, we write.
ps > 0

# if all of the elements are nonnegative, we write
all.equal(target = ps, current = ps)

# The terms “positive” and “nonnegative” and these symbols are not to be
# co nfused with the terms “positive deﬁnite” and “nonnegative deﬁnite” and
# similar symbols for important classes of matrices having diﬀerent properties
# (which we will introduce in equation (3.62) and discuss further in Section 8.3.)
# The transpose of the sum of two matrices is the sum of the transposes:
intersect(ps, ps)  

# The sum of two symmetric matrices is therefore symmetric.
sum(ps, na.rm = FALSE)

# Vector Spaces of Matrices
# Having deﬁned scalar multiplication, matrix addition (for conformable matri-
# ces), and a matrix additive identity, we can deﬁne a vector space of n × m
# matrices as any set that is closed with respect to those operations (which
# necessarily would contain the additive identity; see page 11). As with any
# vector space, we have the concepts of linear independence, generating set or
# spanning set, basis set, essentially disjoint spaces, and direct sums of matrix
# vector spaces (as in equation (2.7), which is diﬀerent from the direct sum of
# matrices deﬁned in terms of diag(·)).
dials::all_neighbors(values = c(TRUE, FALSE))

# Basic Deﬁnitions and Notation
# 49
# With scalar multiplication, matrix addition, and a matrix additive identity,
# we see that IR n×m is a vector space. If n ≥ m, a set of nm n × m matrices
# whose columns consist of all combinations of a set of n n-vectors that span 
# IR n is a basis set for IR n×m . If n < m, we can likewise form a basis set 
# for IR n×m or for subspaces of IR n×m in a similar way. If {B 1 , . . . , B 
# k } is a basis set for
#  k
# IR n×m , then any n × m matrix can be represented as i=1 c i B i . Subsets 
# of a
# basis set generate subspaces of IR n×m .
IR <- spectrum(ps, method = c("pgram", "ar"))

# Because the sum of two symmetric matrices is symmetric, and a scalar
# multiple of a symmetric matrix is likewise symmetric, we have a vector space
# of the n × n symmetric matrices. This is clearly a subspace of the vector
# space IR n×n . All vectors in any basis for this vector space must be symmetric.
# Using a process similar to our development of a basis for a general vector
# space of matrices, we see that there are n(n + 1)/2 matrices in the basis (see
# Exercise 3.1).
View(ps)

