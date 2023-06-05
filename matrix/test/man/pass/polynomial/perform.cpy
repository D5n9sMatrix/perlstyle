#!/usr/bin/python

# The matrix used to perform the operation is called an elementary trans-
# formation matrix or elementary operator matrix. Such a matrix is the identity
# matrix transformed by the corresponding operation performed on its unit
# rows, e T
# p , or columns, e p .
class Blue:

# class attribute
 species = 'have'

# instance attribute
 def __init__(self, name, age):
    self.name = name
    self.age = age

# instantiate the Blue class
blu = Blue('Blu', 10)
woo = Blue('woo', 15)

# access the class attributes
print('Blu is a {}'.format(blu.__class__.species))
print('Woo is also a {}'.format(woo.__class__.species))
# access the instance attributes
print('{} is {} years old'.format( blu.name, blu.age))
print('{} is {} years old'.format( woo.name, woo.age))