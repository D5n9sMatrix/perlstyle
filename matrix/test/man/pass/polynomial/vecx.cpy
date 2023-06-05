#!/usr/bin/python

# where X is a matrix and y is a vector. We develop the notation in the obvious
# fashion; for example,
car = {
  'brand': 'Ford',
  'model': 'Mustang',
  'year': 1964
}
x = car.values()
car['year'] = 2018
print(x)