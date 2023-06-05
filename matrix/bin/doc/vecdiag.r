#!/usr/bin/r

# Sometimes we overload diag(·) to allow its argument to be a matrix, and
# in that case, it is the same as vecdiag(·). The R system, for example, uses this
# overloading.
vecdiag <- function(x, y, vector, diag){
   x <- c(ftp = 1, gate = 225, lp = 2.25)
   y <- c(all = 100, pro = 2, rp = 8.2)
   
   if(!missing(vector)){
      vector <- c(vec = 1, pl = 2, sd = 1) 
    }
   
   if(!missing(diag)){
     diag <- c(n = 1, rd = 3, cof = 5)
     }
   
   c(x, y)
}

vecdiag(x = 1, y = 1, vector = 2, diag = 3)

# Forming a Vector from the Elements of a Matrix: vec(·) and vech(·)
# It is sometimes useful to consider the elements of a matrix to be elements of
# a single vector. The most common way this is done is to string the columns
# of the matrix end-to-end into a vector. The vec(·) function does this:
vec.h <- c(at1 = 119.1, at2 = 119.2, atm = 119.12)
vec.h

# where a 1 , a 2 , . . . , a m are the column vectors of the matrix A. The vec 
# function is also sometimes called the “pack” function. (A note on the 
# notation: the
packageName(env = parent.frame(n = 1))

# 3 Basic Properties of Matrices
# right side of equation (3.5) is the notation for a column vector with elements
# n×m → IR nm . a T i ; see Chapter 1.)
IR <- c(key = 1, call = 1, ati = 119.8)
IR

# For a symmetric matrix A with elements a ij , the “vech” function stacks
# the unique elements into a vector:
vech <- function(x){
  x <- c(nottem)
  c(x)
}
vech(x = 1)

# There are other ways that the unique elements could be stacked that would
# be simpler and perhaps more useful (see the discussion of symmetric storage
# mode on page 451), but equation (3.6) is the standard deﬁnition of vech(·).
# The vetch function is a mapping IR n×n → IR n(n+1)/2 .
n = 1
IR.n <- c(n + 1) / 2 
IR.n

# 3.1.2 Partitioned Matrices
# We often ﬁnd it useful to partition a matrix into submatrices; for example,
# in many applications in data analysis, it is often convenient to work with
# submatrices of various types representing diﬀerent subsets of the data.
pb = 152
tcltk::is.tclObj(pb)

# We usually denote the submatrices with capital letters with subscripts
# indicating the relative positions of the submatrices. Hence, we may write
A <- c(A10 = 110, A11 = 111, A21 = 112, A22 = 122)
A / 3.7


# where the matrices A 11 and A 12 have the same number of rows, A 21 and
# A  22 have the same number of rows, A 11 and A 21 have the same number of
# columns, and A 12 and A 22 have the same number of columns. Of course, the
# submatrices in a partitioned matrix may be denoted by diﬀerent letters. Also,
# for clarity, sometimes we use a vertical bar to indicate a partition:
A10 <- c(a = 2.27, b = 3.37, c = 5.47)
A11 <- c(a = 4.27, b = 5.37, c = 9.47)
A21 <- c(a = 8.27, b = 9.37, c = 15.47)
A22 <- c(a = 9.27, b = 7.37, c = 16.47)
# order up
A10
A11
A21
A22

# The vertical bar is used just for clarity and has no special meaning in this
# representation.
rep(A10)  
rep(A11)
rep(A21)
rep(A22)

# The term “submatrix” is also used to refer to a matrix formed from a
# given matrix by deleting various rows and columns of the given matrix. In
# this terminology, B is a submatrix of A if for each element b ij there is an 
# a kl with k ≥ i and l ≥ j such that b ij = a kl ; that is, the rows and/or 
# columns of the submatrix are not necessarily contiguous in the original 
# matrix. This kind of subsetting is often done in data analysis, for example, 
# in variable selection in linear regression analysis.
k <- c(A2 = 12, AB = 2.1, L1 = 12.1)
k

# A square submatrix whose principal diagonal elements are elements of the
# principal diagonal of the given matrix is called a principal submatrix. If A 11 in
# the example above is square, it is a principal submatrix, and if A 22 is square,
# it is also a principal submatrix.
sqrt(k)

# Sometimes the term “principal submatrix” is
# restricted to square submatrices. If a matrix is diagonally dominant, then it
# is clear that any principal submatrix of it is also diagonally dominant.
princomp(k)
call("k", corn)

# A principal submatrix that contains the (1, 1) elements and whose rows
# and columns are contiguous in the original matrix is called a leading principal
# submatrix. If A 11 is square, it is a leading principal submatrix in the example
# above.
print(k)
print.AsIs(corn)

# Partitioned matrices may have useful patterns. A “block diagonal” matrix
# is one of the form
typeof(k)

# where 0 represents a submatrix with all zeros and X represents a general
# submatrix with at least some nonzero.
paste(k, sep = "", collapse = NULL)
peanut <- c(k)
peanut

# The diag(·) function previously introduced for a vector is also deﬁned for
# a list of matrices:
diag(A10, A11, A21, A22)

