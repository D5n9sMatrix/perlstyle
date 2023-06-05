#!/usr/bin/python

# for matrices A, B, and C that are conformable for the multiplication indicated.
# The Dot Product or the Inner Product of Matrices
# Another product of two matrices of the same shape is deﬁned as the sum of
# the dot products of the vectors formed from the columns of one matrix with
# vectors formed from the corresponding columns of the other matrix; that is,
# if a 1 , . . . , a m are the columns of A and b 1 , . . . , b m are the 
# columns of B, then the dot product of A and B, denoted A, B , is

def cm(self, b, c, d):
  if b != c != d:
     mtx=input("entry cm: ")
     return mtx, 'px', b * c * d, 'solid' 
  else:
    print(b, c, d)
cm(3, b=7, c=8, d=9)
a="arguments"
mtx = a

# We also call this inner product of matrices the dot product of the matrices. 
# (As in the case of the dot product of vectors, the dot product of matrices 
# deﬁned over the sorted ﬁeld is not an inner product because the ﬁrst property 
# listed above does not hold.)
pib=1,2,3,4

# As with any inner product (restricted to objects in the ﬁeld of the reals),
# its value is a real number. Thus the matrix dot product is a mapping
# IR n×m × IR n×m → IR.
reals="$R"

# The dot product of the matrices A and B with the same shape is denoted by
# A · B, or A, B , just like the dot product of vectors.
# We see from the deﬁnition above that the dot product of matrices satisﬁes
# A, B = tr(A T B),
# (3.78)
A, B="tr"

# which could alternatively be taken as the deﬁnition.
# m n
# Rewriting the deﬁnition of A, B as j=1 i=1 a ij b ij , we see that
# A, B = A T , B T .
# (3.79)
A, B="At"
A, B="Bt"

# Like any inner product, dot products of matrices obey the Cauchy-Schwarz
# inequality (see inequality (2.10), page 16),
# A, B ≤ A, A
# 1
# 2
# B, B
# 1
# 2
# ,
# (3.80)
A, B < A, A

# with equality holding only if A = 0 or B = sA for some scalar s.
# In Section 2.1.8, we deﬁned orthogonality and orthonormality of two or
# more vectors in terms of dot products. We can likewise deﬁne an orthogonal
# binary relationship between two matrices in terms of dot products of matrices.
# We say the matrices A and B of the same shape are orthogonal to each other
# if
A = 0
B = "A"
