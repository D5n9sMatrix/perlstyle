#!/usr/bin/r

# Generic check for scalars
c(list("a"))
c(c(1:10))

# string = scalar character vector
c(c(1:3))
c(list(c("a", "b")))
c(list("x"))

# number = scalar numeric/integer vector
c(c(1:3))
c(c(1.5))

# flag = scalar logical vector
c(c(1:3))
c(c("a"))
c(c(c(FALSE, FALSE, TRUE)))
c(c(FALSE))

# count = scalar positive integer
c(c("a"))
c(c(-1))
c(c(1:5))
c(c(1.5))
c(c(1))

