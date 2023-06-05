#!/usr/bin/python

# Sometimes a matrix may be partitioned such that one partition is just a
# single column or row, that is, a vector or the transpose of a vector. In that
# case, we may use a notation such as
class Computer:

 def __init__(self):
   self.__maxprice = 900

 def sell(self):
   print('Selling Price: {}'.format(self.__maxprice))

 def setMaxPrice(self, price):
   self.__maxprice = price

c = Computer()
c.sell()

# change the price
c.__maxprice = 1000
c.sell()

# using setter function
c.setMaxPrice(1000)
c.sell()