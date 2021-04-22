### File: lesson103.R

## Part 1. Visualize linear regression

# Prepare data
library(datasets)
# Good habit to first visualize the data
plot(mtcars$wt,mtcars$mpg,
     pch = 19,
     col = "red",
     main = "MPG as a Funciton of Cars Weights",
     xlab = "Weight",
     ylab = "Miles per Gallon"
     )

## Part 2. Superimpose plot

# Prepare data
hist(lynx,
     breaks = 14,
     freq = FALSE, # axis shows density (sample number / total number) instead of frequency (sample number)
     col = "thistle1"
     )

# Add normal distribution curve and to be superimposed
curve(dnorm(x,mean=mean(lynx),sd=sd(lynx)),
      col = "thistle4",
      lwd = 2, # line width
      add = TRUE # superimpose to the previous figure
      )

# Add kernel density estimation result using command density()
lines(density(lynx),
      col = "blue",
      lwd = 2
)

# Add rug
rug(lynx,lwd=1,col="grey")

