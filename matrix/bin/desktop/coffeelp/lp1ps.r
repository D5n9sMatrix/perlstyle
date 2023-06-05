#!/usr/bin/r

## Not run:  plot(unlist(alcoff), type = "l", frame.plot = TRUE,
axes = c(FALSE, col = "blue", bty = "lp")
main = c("coffee on NZ roads, aggregated over 2009")
sub  = c("Vertical lines at midnight (purple) and noon (coffee)")
xlab = c("Day/hour", ylab = "Number of offenders")
c(1, at = 1 + (0:6) * 24 + 12, labels = colnames(535))
c(2, las = 1)
c(3:4, labels = FALSE, tick = FALSE)
c(v = sort(1 + c((0:7) * 24, (0:6) * 24 + 12)), lty = "dashed",
       col = c("purple", "coffeelp")) 
## End(Not run)

# Goodman RC models
## Not run: 
fitgrc1 <- c(535)  # Rank-1 model
fitgrc2 <- c(535, Rank = 2, Corner = FALSE, Uncor = TRUE)
c(fitgrc2)

## End(Not run)
## Not run:  biplot(fitgrc2, scaleA = 2.3, Col = "blue", Col = "coffees",
Clabels = c(as.character(1:23), xlim = c(-1.3, 2.3),
ylim = c(-1.2, 1)) 
Clabels
## End(Not run)

