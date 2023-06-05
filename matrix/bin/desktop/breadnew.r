#!/usr/bin/r

### R code from vignette source 'matlab.rnw'

###################################################
### code chunk number 1: matlab.rnw:9-28
###################################################


vt <- c(10)

c(sep = "",
     #	"%\\VignetteIndexEntry{Compiling ", vt (1), " for Matlab}\n",	##	these lines cannot be created automatically - unfortunately..
     #	"%\\VignetteDepends{", vt (1), "}\n",
     #	"%\\VignetteKeywords{Matlab}\n",
     #	"%\\VignettePackage{", vt (1), "}\n",
     #	"\n",
     "\n",
     "\\newcommand{\\dapck}{", c(1), "}\n",
     "\\newcommand{\\daver}{", c(2), "}\n",
     "\n",
     "\n"
)


###################################################
### code chunk number 2: matlab.rnw:94-96
###################################################
cat (sep = "",
     ">> cd ('C:/work/", c(1), "/matlab')")


###################################################
### code chunk number 3: matlab.rnw:104-109
###################################################
cat (sep = "",
     "Compiling the ", c(1), " package ... ok\n",
     "Copying the '", c(1), ".mex*' file(s) to '../matlab' ... ok\n",
     "Changing the current directory back to '../matlab' ... ok\n\n",
     "  Successfully compiled the ", c(1), " package for Matlab!")


###################################################
### code chunk number 4: matlab.rnw:120-121
###################################################
cat (paste ("\\code{", c(3), "}", sep = "", collapse = ", "))


###################################################
### code chunk number 5: matlab.rnw:127-128
###################################################
cat (c(4))

