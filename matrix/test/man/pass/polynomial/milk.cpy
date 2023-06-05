#!/usr/bin/python

# 3.2.2 Multiplication of Partitioned Matrices
# Multiplication and other operations with partitioned matrices are carried out
# with their submatrices in the obvious way. Thus, assuming the submatrices
# are conformable for multiplication,
# 
# 
# 
# A 11 A 12
# B 11 B 12
# A 11 B 11 + A 12 B 21 A 11 B 12 + A 12 B 22
# A 21 A 22
# B 21 B 22
# A 21 B 11 + A 22 B 21 A 21 B 12 + A 22 B 22
class Multiples(object):
    def submatrix(self, args=None, sub=False, matrix=True):
        self.add("A", 11, "A", 12) + self.add("A", 12, "B", 21)
        self.add("B", 11, "B", 12) + self.add("A", 12, "B", 21)
        self.add("A", 11, "B", 11) + self.add("A", 12, "B", 21)

        if self.add() is None:
            round(self.add()[11, 12, 21, 22, 'milk'])
        else:
            return abs((3 - 4j))
            print(abs)