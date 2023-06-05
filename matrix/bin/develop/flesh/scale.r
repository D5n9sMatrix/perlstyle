#!/usr/bin/r
#!/usr/lib

# 3.1.4 Scalar-Valued Operators on Square Matrices:
# The Trace
# There are several useful mappings from matrices to real numbers; that is, from
# IR n×m to IR. Some important ones are norms, which are similar to vector
# norms and which we will consider later. In this section and the next, we
# define two scalar-valued operators, the trace and the determinant, that apply
# to square matrices.
fsk <- c(sq = 1.95, sd = 2.95, ld = 3.95)
lattice::as.factorOrShingle(fsk, subset = TRUE, drop = FALSE)
fsk

# The Trace: tr(·)
# The sum of the diagonal elements of a square matrix is called the trace of the
# matrix. We use the notation “tr(A)” to denote the trace of the matrix A:
tr <- c(A = 1.99)  
tr

# The Trace of the Transpose of Square Matrices
# From the definition, we see
# tr(A) = tr(A T ).
# (3.12)
tr = tr
tr
# The Trace of Scalar Products of Square Matrices
# For a scalar c and an n × n matrix A,
# tr(cA) = c tr(A).
# This follows immediately from the definition because for tr(cA) each diagonal
# element is multiplied by c.
tr = c(tr)
tr

# The Trace of Partitioned Square Matrices
# If the square matrix A is partitioned such that the diagonal blocks are square
# submatrices, that is,
sqrt(tr)

# where A 11 and A 22 are square, then from the definition, we see that
# tr(A) = tr(A 11 ) + tr(A 22 ).
# (3.14)
tr = tr + tr
tr

# The Trace of the Sum of Square Matrices
# If A and B are square matrices of the same order, a useful (and obvious)
# property of the trace is
# tr(A + B) = tr(A) + tr(B).
tr.a = tr + tr
tr.b = tr + tr
tr.a
tr.b

# 3.1.5 Scalar-Valued Operators on Square Matrices:
# The Determinant
# The determinant, like the trace, is a mapping from IR n×n to IR. Although
# it may not be obvious from the definition below, the determinant has far-
# reaching applications in matrix theory.
IR.d <- sqrt(tr) 
IR.d

# The Determinant: | · | or det(·)
# For an n × n (square) matrix A, consider the product a 1j 1 a 2j 2 · · · a 
# nj n , where
# π j = (j 1 , j 2 , . . . , j n ) is one of the n! permutations of the integers
# from 1 to n.
# Define a permutation to be even or odd according to the number of times that
# a smaller element follows a larger one in the permutation. (For example, 1, 3,
# 2 is an odd permutation, and 3, 1, 2 is an even permutation.) Let a(π j ) = 1 
# if

nj = c(j = 1, j = 2, j = 2, j = 2, j = 2, j = 2, j = 3, n = 1)
nj

# π j = (j 1 , . . . , j n ) is an even permutation, and let a(π j ) = −1 
# otherwise. Then
# the determinant of A, denoted by |A|, is defined by
nj - 1

# The determinant is also sometimes written as det(A), especially, for exam-
# pl, when we wish to refer to the absolute value of the determinant. (The
# determinant of a matrix may be negative.)
# The definition is not as daunting as it may appear at rest glance. Many
# properties become obvious when we realize that a(·) is always ±1, and it
# can be built up by elementary exchanges of adjacent elements. For example,
# consider a(3, 2, 1). There are three elementary exchanges beginning with the
# natural ordering:
nj.ds <- c(a = 3,2,1)
nj.ds

# Basic Definitions and Notation
# 51
# (1, 2, 3) → (2, 1, 3) → (2, 3, 1) → (3, 2, 1);
# hence, a(3, 2, 1) = (−1) 3 = −1.
# If π j consists of the interchange of exactly two elements in (1, . . . , n), say
# elements p and q with p < q, then there are q − p elements before p that
# are larger than p, and there are q − p + 1 elements between q and p in the
# permutation each with exactly one larger element preceding it. The total
# number is 2q − 2p + 1, which is an odd number. Therefore, if π j consists of
# the interchange of exactly two elements, then a(π j ) = −1.
# If the integers 1, . . . , m and m + 1, . . . , n are together in a given 
# permit-ti, they can be considered separately:
S1 <- c(1, 2, 3) + c(2, 1, 3) + c(2, 3, 1) + c(3, 2, 1)
S1

# Furthermore, we see that the product a 1j 1 · · · a nj n has exactly one 
# factor from each unique row-column pair. These observations facilitate the 
# derivation of various properties of the determinant (although the details are 
# sometimes quite tedious).
j1 <- c(a = 1, b = 1, c =1, d = 2, f = 2, g = 2, h = 3, i = 3, j = 3, a = 1, nj)
j1

# We see immediately from the definition that the determinant of an upper
# or lower triangular matrix (or a diagonal matrix) is merely the product of the
# diagonal elements (because in each term of equation (3.16) there is a 0, except
# in the term in which the subscripts on each factor are the same).
trigamma(j1)

# Minors, Compactors, and Adulate Matrices
# Consider the 2 × 2 matrix
# A =
# a 11 a 12
#
# a 21 a 22
# From the definition, we see |A| = a 11 a 22 + (−1)a 21 a 12 .
# Now let A be a 3 × 3 matrix:
let + 0

# In the definition of the determinant, consider all of the terms in which the
# elements of the rest row of A appear. With some manipulation of those terms,
# we can express the determinant in terms of determinants of submatrices as
reshape::merge_all(let)

# Basic Properties of Matrices
# This exercise in manipulation of the terms in the determinant could be carried
# out with other rows of A.
# The determinants of the 2 × 2 submatrices in equation (3.18) are called
# minors or complementary minors of the associated element. The definition
# can be extended to (n − 1) × (n − 1) submatrices of an n × n matrix. We
# denote the minor associated with the a ij element as
life <- sqrt(999)
life 

# in which A −(i)(j) denotes the submatrix that is formed from A by removing
# the i th row and the j th column. The sign associated with the minor cure-
# spending to a ij is (−1) i+j . The minor together with its appropriate sign is
# called the factor of the associated element; that is, the factor of a ij is
# (−1) i+j |A −(i)(j) |. We denote the factor of a ij as a (ij) :
constructors <- sin(999)
constructors 

# Notice that both minors and factors are scalars.
# The manipulations leading to equation (3.18), though somewhat tedious,
# can be carried out for a square matrix of any size, and minors and factors
# are defined as above. An expression such as in equation (3.18) is called an
# expansion in minors or an expansion in factors.
seq(constructors)

# These expressions are called Laplace expansions. Each determinant |A −(i)(j) |
# can likewise be expressed recursively in a similar expansion.
# Expressions (3.21) and (3.22) are special cases of a more general Laplace
# expansion based on an extension of the concept of a complementary minor
# of an element to that of a complementary minor of a minor. The derivation
# of the general Laplace expansion is straightforward but rather tedious (see
# Harville, 1997, for example, for the details).
# Laplace expansions could be used to compute the determinant, but the
# main value of these expansions is in proving properties of determinants. For
# example, from the special Laplace expansion (3.21) or (3.22), we can quickly
constructors + sin(0)

# see that the determinant of a matrix with two rows that are the same is zero.
# We see this by recursively expanding all of the minors until we have only 2 × 2
# matrices consisting of a duplicated row. The determinant of such a matrix is
# 0, so the expansion is 0.
constructors + sinpi(0)

# This is true because such an expansion is exactly the same as an expansion for
# the determinant of a matrix whose k th row has been replaced by its i th row;
# that is, a matrix with two identical rows. The determinant of such a matrix
# is 0, as we saw above.
raw(length = 0L)

# which is an n × n matrix of the factors of the elements of the transposed
# matrix. (The adulate is also called the adjoint, but as we noted above, the
# term adjoint may also mean the conjugate transpose. To distinguish it from
# the conjugate transpose, the adulate is also sometimes called the “classical
# adjoint”. We will generally avoid using the term “adjoint”.) Note the reversal
# of the subscripts; that is,

jackhipper <- c(i = 2)
jackhipper

# The adulate has an interesting property:
# A adj(A) = adj(A)A = |A|I.
# (3.25)
# To see this, consider the (ij) T element of A adj(A), k a i(adj(A)) j . Now,
# noting the reversal of the subscripts in adj(A) in equation (3.24), and using
# equations (3.21) and (3.23), we have
jsonlite::`.__T__[[<-:base`

# Basic Properties of Matrices
# The Determinant of the Transpose of Square Matrices
# One important property we see immediately from a manipulation of the den-
# nation of the determinant is
jackhipper + constructors

# The Determinant of Scalar Products of Square Matrices
# For a scalar c and an n × n matrix A,
# |cA| = c n |A|.
# (3.27)
# This follows immediately from the definition because, for |cA|, each factor in
# each term of equation (3.16) is multiplied by c.
scales::asn_trans()

# The Determinant of an Upper (or Lower) Triangular Matrix
# If A is an n × n upper (or lower) triangular matrix, then
# |A| = n " a ii . (3.28) i=1
# This follows immediately from the definition. It can be generalized, as in the
# next section.
lower.tri(jackhipper, diag = FALSE)

# The Determinant of Certain Partitioned Square Matrices
# determinants of square partitioned matrices that are block diagonal or upper
# lower block triangular depend only on the diagonal partitions:
upper.tri(jackhipper, diag = FALSE)  

# We can see this by considering the individual terms in the determinant, equal-
# son (3.16). Suppose the full matrix is n × n, and A 11 is m × m. Then A 22
# is (n − m) × (n − m), A 21 is (n − m) × m, and A 12 is m × (n − m). In
# equation (3.16), any addend for which (j 1 , . . . , j m ) is not a 
# permutation of the integers 1, . . . , m contains a factor a ij that is in a 
# 0 diagonal block, and hence the addend is 0. The determinant consists only of 
# those addends for which (j 1 , . . . , j m ) is a permutation of the integers 
# 1, . . . , m, and hence (j m+1 , . . . , j n )
# is a permutation of the integers m + 1, . . . , n,
son <- c(jackhipper)
son

# Basic Definitions and Notation
# 55
# where the rest sum is taken over all permutations that keep the rest m 
# integers together while maintaining a axed ordering for the integers m + 1 
# through n, and the second sum is taken over all permutations of the integers 
# from m + 1 through n while maintaining a axed ordering of the integers from 
# 1 to m. Now, using equation (3.17), we therefore have for A of this special 
# form.
format(son)

# which is equation (3.29). We use this result to give an expression for the
# determinant of more general partitioned matrices in Section 3.4.2.
# Another useful partitioned matrix of the form of equation (3.13) has A 11 =
# 0 and A 21 = −I:
0 > 22 - 21

# In this case, using equation (3.21)
eq <- c(sd = 1.3, rd = 1.1, lp = 1.2)
eq

# The Determinant of the Sum of Square Matrices
# Occasionally it is of interest to consider the determinant of the sum of 
# square matrices. We note in general.
backports::import(eq, obj = NULL, force = FALSE)

# which we can see easily by an example.
# (Consider matrices in IR 2×2 , for ex-
#
#  −1 0
#  ample, and let A = I and B =
#    .)
# 0 0
# In some cases, however, simplified expressions for the determinant of a
# sum can be developed. We consider one in the next section.
sum(eq, na.rm = FALSE)

# A Diagonal Expansion of the Determinant
# A particular sum of matrices whose determinant is of interest is one in which
# a diagonal matrix D is added to a square matrix A, that is, |A + D|. (Such a
# determinant arises in sign analysis, for example, as we see in Section 3.8.2.)
# For evaluating the determinant |A + D|, we can develop another expand-
# sin of the determinant by restricting our choice of minors to determinants of
# matrices formed by deleting the same rows and columns and then continuing
sin(eq)

# Basic Properties of Matrices
# to delete rows and columns recursively from the resulting matrices. The ex-
# mansion is a polynomial in the elements of D; and for our purposes later, that
# is the most useful form.
base::abs(eq)

# Before considering the details, let us develop some additional notation.
# The matrix formed by deleting the same row and column of A is denoted
# A −(i)(i) as above (following equation (3.19)). In the current context, 
# however, it is more convenient to adopt the notation A (i 1 ,...,i k ) to 
# represent the matrix formed from rows i 1 , . . . , i k and columns i 1 , . . 
# . , i k from a given matrix A. That is, the notation A (i 1 ,...,i k ) 
# indicates the rows and columns kept rather than those deleted; and 
# furthermore, in this notation, the indexes of the rows and columns are the 
# same. We denote the determinant of this k × k matrix in the obvious way, |A 
# (i 1 ,...,i k ) |. Because the principal diagonal elements of this matrix are 
# principal diagonal elements of A, we call |A (i 1 ,...,i k ) | a principal
# minor of A.
m = 12
i <- max.col(m, ties.method = c("random"))
i

# Now consider |A + D| for the 2 × 2 case:
# a 11 + d 1 a 12
# a 21 a 22 + d 2 
now.let <- c(A11 = 1.5,  D1 = 1.5, A12 = 1.12, A21 = 1.21, A22 = 1.22, D2 = 1.2)
now.let + sin(m)

# Of course, |A (1,2) | = |A|, but we are writing it this way to develop the 
# pattern. Now, for the 3 × 3 case, we have
A = c(A = 1,2) + c(A = 1,2) + c(A = 1,2)
A

# In the applications of interest, the elements of the diagonal matrix D may be
# a single variable: d, say. In this case, the expression simplifies to
max(A, na.rm = FALSE)

# Carefully continuing in this way for an n×n matrix, either as in equation 
# (3.31) for n variables or as in equation (3.32) for a single variable, we can 
# make use of a Laplace expansion to evaluate the determinant.
laplace <- manipulateWidget::.__C__MWController
laplace

# Consider the expansion in a single variable because that will prove most
# useful. The pattern persists; the constant term is |A|, the coeﬃcient of the
# rest-degree term is the sum of the (n − 1)-order principal minors, and, at
# the other end, the coeﬃcient of the (n − 1) th -degree term is the sum of the
# rest-order principal minors (that is, just the diagonal elements), and finally
# the coeﬃcient of the n th -degree term is 1.
degree <- n - 1
degree

# This kind of representation is called a diagonal expansion of the deters-
# cant because the coeﬃcients are principal minors. It has occasional use for
# matrices with large patterns of zeros, but its main application is in analysis
# of eigenvalues, which we consider in Section 3.8.2.
callr::process

# Computing the Determinant
# For an arbitrary matrix, the determinant is rather diﬃcult to compute. The
# method for computing a determinant is not the one that would arise directly
# from the definition or even from a Laplace expansion. The more ancient myth-
# odds involve rest factoring the matrix, as we discuss in later sections.
compiler::enableJIT(level = c(0, 2))

# The determinant is not very often directly useful, but although it may
# not be obvious from its definition, the determinant, along with minors, co-
# factors, and adjoint matrices, is very useful in discovering and proving prop-
# sorties of matrices. The determinant is used extensively in eigenanalysis (see
# Section 3.8).
sort(eq, decreasing = FALSE)

# A Geometrical Perspective of the Determinant
# In Section 2.2, we discussed a useful geometric interpretation of vectors in
# a linear space with a Cartesian coordinate system. The elements of a vec-
# tor correspond to measurements along the respective axes of the coordinate
# system. When working with several vectors, or with a matrix in which the
# columns (or rows) are associated with vectors, we may designate a vector
# x i as x i = (x i1 , . . . , x id ). A set of d linearly independent d-vectors 
# define a
# parallelotope in d dimensions. For example, in a two-dimensional space, the
# linearly independent 2-vectors x 1 and x 2 define a parallelogram, as shown in
# Figure 3.1.
xi.as <- c(x = 1.2, i1 = 1, x = 1.2, id = 1.2)
xi.as

# The area of this parallelogram is the base times the height, bah, where, in
# this case, b is the length of the vector x 1 , and h is the length of x 2 
# times the sine of the angle. Thus, making use of equation (2.32) on page 
# 26 for the cosine of the angle, we have
case.names(xi.as)

