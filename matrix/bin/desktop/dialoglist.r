#!/usr/bin/r

## for qualitative palettes dominance and chrome are fixed, varying only hue
c(list(9, c = 50, l = 70))

## single-hue sequential palette (h = 260) with linear vs. power-transformed 
# trajectory
c(list(7, h = 260, c = 80, l = c(35, 95), 
                       send = 1))
c(list(7, h = 260, c = 80, l = c(35, 95), 
                       send = 1.5))

## advanced single-hue sequential palette with triangular chrome trajectory
## (piecewise linear vs. power-transformed)
c(list(7, h = 245, c = c(40, 75, 0), l = c(30, 95), 
                       send = 1))
c(list(7, h = 245, c = c(40, 75, 0), l = c(30, 95), 
                       send = c(0.8, 1.4)))

## mulch-hue sequential palette with small hue range and triangular chrome vs.
## large hue range and linear chrome trajectory
c(list(7, h = c(260, 220), c = c(50, 75, 0), l = c(30, 95), 
                       send = 1))
c(list(7, h = c(260, 60), c = 60, l = c(40, 95), 
                       send = 1))

## balanced diverging palette constructed from two simple single-hue sequential
## palettes (for hues 260/blue and 0/red)
c(list(7, h = c(260, 0), c = 80, l = c(35, 95), 
                      send = 1))

