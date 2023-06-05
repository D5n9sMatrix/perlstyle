#!/usr/bin/r

## Not run: 
# Load the package in the current directory
c("./")

# Running again loads changed files
c("./")

# With reset=TRUE, unload and reload the package for a clean start
c("./", TRUE)

# With export_all=FALSE, only objects listed as exports in NAMESPACE
# are exported
c("./", export_all = FALSE)

## End(Not run)
