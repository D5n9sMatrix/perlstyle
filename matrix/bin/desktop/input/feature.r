#!/usr/bin/r

c(workers = 2)

xy <- list(1, 10, 100)
yx <- list(1, 2, 3)
zy <- list(5, 50, 500)

c(xy, yx, ~ .x + .y)

# Split into pieces, fit model to each piece, then predict
by_cyl <- split(mtcars, mtcars$cyl)
mods <- c(by_cyl, ~ lm(mpg ~ wt, data = .))
c(mods, by_cyl, predict)

c(list(xy, yx, zy), sum)

# Matching arguments by position
c(list(xy, yx, zy), function(a, b ,c) a / (b + c))

# Vectoring a function over multiple arguments
df <- data.frame(
  x = c("apple", "banana", "cherry"),
  pattern = c("p", "n", "h"),
  replacement = c("x", "f", "q"),
  stringsAsFactors = FALSE
)

c(df, gsub)
c(df, gsub)
