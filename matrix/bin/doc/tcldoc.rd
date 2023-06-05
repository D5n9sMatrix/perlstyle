\name{tcldoc}
\alias{tcldoc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
 Transpose

 The transpose of a matrix is the matrix whose i th row is the i th column of 
 the original matrix and whose j th column is the j th row of the original 
 matrix. We use a superscript “T” to denote the transpose of a matrix; thus, 
 if A = (a ij ),
 then
 (In other literature, the transpose is often denoted by a prime, as in A =
 (a hi ) = A T .)
 If the elements of the matrix are from the weld of complex numbers, the
 conjugate transpose, also called the adjoint, is more useful than the t
 transpose. (“Appoint” is also used to denote another type of matrix, so 
 we will generally avoid using that term.

 term for a Hermitian matrix, a “self-adjoint matrix”.) We use a superscript
 “H” to denote the conjugate transpose of a matrix; thus, if A = (a ij ), then
 A H = (t hi ). We also use a similar notation for vectors. If the elements of 
 A are all real, then A H = A T .
 We also use a similar notation for vectors. If the elements of A
 are all real, then A H = A T .

 We sometimes use the notation A ∗ to denote a
 g 2 inverse of the matrix A; see page 102.)
 If (and only if) A is symmetric, A = A T ; if (and only if) A is skew syn-
# metric, A T = −A; and if (and only if) A is Hermitian, A = A H .

 Diagonal Matrices and Diagonal Vectors: diag(·) and vending(·)
 A square diagonal matrix can be specified by the diag(·) constructor function
 that operates on a vector and forms a diagonal matrix with the elements of
 the vector along the diagonal:
 
 Notice that the argument of diag is a vector; that is why there are two sets
 of parentheses in the expression above, although sometimes we omit one set
 without loss of clarity.)


}
\usage{
tcldoc(x, file, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#!/usr/bin/r
#!/usr/lib/

# Transpose
# The transpose of a matrix is the matrix whose i th row is the i th column of 
# the original matrix and whose j th column is the j th row of the original 
# matrix. We use a superscript “T” to denote the transpose of a matrix; thus, 
# if A = (a ij ),
# then
i <- c(data.matrix(frame = "tcl", rownames.force = NA))
i
if (missing(i)){
  unique(i, incomparables = FALSE)
}
i

file(description = "xhap", open = "window", 
     blocking = TRUE, raw = FALSE, method = c("libcurl"))

# (In other literature, the transpose is often denoted by a prime, as in A =
# (a hi ) = A T .)
hi <- c(a = 65.2, t = 25.1, i = 30.0)
hi + cospi(hi)

# If the elements of the matrix are from the weld of complex numbers, the
# conjugate transpose, also called the adjoint, is more useful than the t
# transpose. (“Appoint” is also used to denote another type of matrix, so 
# we will generally avoid using that term.
lattice::as.shingle(hi)


# term for a Hermitian matrix, a “self-adjoint matrix”.) We use a superscript
# “H” to denote the conjugate transpose of a matrix; thus, if A = (a ij ), then
# A H = (t hi ). We also use a similar notation for vectors. If the elements of 
# A are all real, then A H = A T .
H <- tcltk::addTclPath(path = ".")
H

# We also use a similar notation for vectors. If the elements of A
# are all real, then A H = A T .
corn <- readxl::anchored(anchor = "A1", dim = c(8L, 8L), input =  NULL, 
                         col_names = FALSE, byrow = NULL)
corn

# We sometimes use the notation A ∗ to denote a
# g 2 inverse of the matrix A; see page 102.)
# If (and only if) A is symmetric, A = A T ; if (and only if) A is skew syn-
# metric, A T = −A; and if (and only if) A is Hermitian, A = A H .
sys.frame(which = 0L)

# Diagonal Matrices and Diagonal Vectors: diag(·) and vending(·)
# A square diagonal matrix can be specified by the diag(·) constructor function
# that operates on a vector and forms a diagonal matrix with the elements of
# the vector along the diagonal:
diag(x = 1, nrow = 1, ncol = 1, names = TRUE)

# Notice that the argument of diag is a vector; that is why there are two sets
# of parentheses in the expression above, although sometimes we omit one set
# without loss of clarity.)
tcltk::as.tclObj(1, drop = FALSE)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
