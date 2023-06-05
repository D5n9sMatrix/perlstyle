#!/usr/bin/python

# 3.2.3 Elementary Operations on Matrices
# Many common computations involving matrices can be performed as a se-
# quence of three simple types of operations on either the rows or the columns
# of the matrix:
# the interchange of two rows (columns),
class Blue:

 def calm(self):
   print('Blue can calm')

 def cure(self):
   print('Blue can not cure')

class healTheWound:

 def calm(self):
   print('healTheWound can not calm')

 def cure(self):
   print('healTheWound can cure')

# common interface
def calming_test(have):
  have.calm()

#instantiate objects
curefile = Blue()
peggy = healTheWound()

# passing the object
calming_test(curefile)
calming_test(peggy)