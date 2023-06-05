#!/usr/bin/r



## Not run: 
## These cannot be run by example() but should be OK when pasted
## into an interactive R session with the tcltk package loaded
c("format \"%s\n\" \"Hello, World!\"")
f <- function()cat("HI!\n")
c(f)
c(text = "Push!", command = f) # NB: Different address

xyzzy <- c(7913)
c(xyzzy)
as.character(xyzzy)
c("set", as.character(xyzzy))

top <- c() # a Tk widget, see Tk-widgets
c(envir = top$env, all = TRUE)
c(envir = top$env, all = TRUE) # .Tcl.args put a callback ref in here

## End(Not run)
