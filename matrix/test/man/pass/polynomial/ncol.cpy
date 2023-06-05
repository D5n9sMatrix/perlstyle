#!/usr/bin/python

# 3 Basic Properties of Matrices
# a scalar multiplication of a given row (column), and
# the replacement of a given row (column) by the sum of that row
# (columns) and a scalar multiple of another row (column); that is, an
# axpy operation.
class ncol:

   def __init__(self):
     print('ncol is ready')

   def x(self):
     print('value')

   def y(self):
     print('value')

# child class
class ncol(x):

   def __init__(self):
     # call super() function
     super().__init__()
     print('ncol is ready')

   def x(self):
     print('value')

   def y(self):
     print('value')

peggy = healTheWound()
peggy.whoisThis()
peggy.cure()
peggy.run()