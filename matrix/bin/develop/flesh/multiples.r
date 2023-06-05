#!/usr/bin/r
#!/usr/lib

# Although we will not go through the details here, this equivalence of a
# volume of a parallelotope that has a vertex at the origin and the absolute
# value of the determinant of a square matrix whose columns correspond to the
# vectors that form the sides of the parallelotope extends to higher dimensions.
vec.w <- sqrt(220)
vec.w

# 3.2 Multiplication of Matrices and
# Multiplication of Vectors and Matrices
# The elements of a vector or matrix are elements of a meld, and most matrix
# and vector operations are defined in terms of the two operations of the meld.
# Of course, in this book, the meld of most interest is the meld of real 
# numbers.
multipleClasses(details = FALSE)

# 3.2.1 Matrix Multiplication (Cayley)
# There are various kinds of multiplication of matrices that may be useful. The
# most common kind of multiplication is Cayley multiplication. If the number
# of columns of the matrix A, with elements a ij , and the number of rows of the
# matrix B, with elements b ij , are equal, then the (Cayley) product of A and B
# is defined as the matrix C with elements
Dlj <- function(b, ij, a, j){
  if(!missing(b)){
    return(c(b = b + ij, ij = b * ij, a = a + j, j = a + j))
  }
}
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(1)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(2)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(3)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(4)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(5)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(6)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(7)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(8)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(9)

Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(1)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(2)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(3)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(4)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(5)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(6)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(7)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(8)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(9)

Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(1)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(2)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(3)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(4)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(5)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(6)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(7)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(8)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(9)

# This is the most common type of matrix product, and we refer to it by the
# unqualified phrase “matrix multiplication”.
# Cayley matrix multiplication is indicated by juxtaposition, with no inter-
# vending symbol for the operation: C = AB.
# If the matrix A is n × m and the matrix B is m × p, the product C = AB
# is n × p:
n = 1
p = 15
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(n)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sin(p)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(n)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + cos(p)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(n)
Dlj(b = 1.9, ij = 2.9, a = 3.9, j = 5.9) + sqrt(p)


# Cayley matrix multiplication is a mapping,
maps::iso3166

# The multiplication of an n × m matrix and an m × p matrix requires
# nmp scalar multiplications and np(m − 1) scalar additions. Here, as always
# in numerical analysis, we must remember that the definition of an operation,
# such as matrix multiplication, does not necessarily define a good algorithm
# for evaluating the operation.
nmp <- function(np){
  if(!missing(np)){
    return(np = np) 
  }
  c(np)
}
nmp(np = 1.9) + sin(m - 1)

# It is obvious that while the product AB may be well-defined, the product
# BA is defined only if n = p; that is, if the matrices AB and BA are square.
# We assume throughout that writing a product of matrices AB implies that
# the number of columns of the rest matrix is the same as the number of rows of
# the second; that is, they are conformable for multiplication in the order 
# given.
n = p
n

# It is easy to see from the definition of matrix multiplication (3.34) that
# in general, even for square matrices, AB = BA. It is also obvious that if AB
# exists, then B T A T exists and, in fact,
factorial(2 + 1)


# 3 Basic Properties of Matrices
# B T A T = (AB) T .
# (3.35)
# The product of symmetric matrices is not, in general, symmetric. If (but not
# only if) A and B are symmetric, then AB = (BA) T .
AB <- c(barplot(height = 3.35))

# Various matrix shapes are preserved under matrix multiplication. Assume
# A and B are square matrices of the same number of rows. If A and B are
# diagonal, AB is diagonal; if A and B are upper triangular, AB is upper
# triangular; and if A and B are lower triangular, AB is lower triangular.
diag(x = AB, nrow = 3.35, ncol = 3.35, names = TRUE)
trigamma(AB)

# Because matrix multiplication is not commutative, we often use the terms
# “premultiply” and “postmultiply” and the corresponding nominal forms of
# these terms. Thus, in the product AB, we may say B is premultiplied by A,
# or, equivalently, A is postmultiplied by B.
pressure

# Although matrix multiplication is not commutative, it is associative; that
# is, if the matrices are conformable,
combn(AB, m = 1L, FUN = NULL, simplify = TRUE)

# It is also distributive over addition; that is,
dist(m, method = "euclidean", diag = FALSE, upper = FALSE, p = 2)

# These properties are obvious from the definition of matrix multiplication.
# (Note that left-sided distribution is not the same as right-sided distribution
# because the multiplication is not commutative.)
commandArgs(trailingOnly = FALSE)

# An n×n matrix consisting of 1s along the diagonal and 0s everywhere else is
# a multiplicative identity for the set of n×n matrices and Cayley 
# multiplication. Such a matrix is called the identity matrix of order n, and 
# is denoted by I n , or just by I. The columns of the identity matrix are unit 
# vectors.
set.seed(27)

# The identity matrix is a multiplicative identity for any matrix so long as
# the matrices are conformable for the multiplication. If A is n × m, then
n = 1
n * m

# Pow of Square Matrices
# For a square matrix A, its product with itself is defined, and so we will use 
# the notation A 2 to mean the Cayley product AA, with similar meanings for A k
# for a positive integer k. As with the analogous scalar case, A k for a 
# negative integer may or may not exist, and when it exists, it has a meaning 
# for Cayley multiplication similar to the meaning in ordinary scalar 
# multiplication. We will consider these issues later (in Section 3.3.3).
lattice::as.shingle(n * m)

# For a diagonal matrix D = diag ((d 1 , . . . , d n )), we have
# D k = diag (d k 1 , . . . , d kn ) .
# (3.39)
# (3.40)

