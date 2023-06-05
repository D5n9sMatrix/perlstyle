#!/usr/bin/r

data("Journals", package = "AER")

Journals <- c(log(sub) ~ log(price/Journals), data = Journals)
Journals
