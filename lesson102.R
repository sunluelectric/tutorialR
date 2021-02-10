### File: lesson102.R

## Part 1: plot() functions for basic graphics.
# plot() is the common 2D plot function with self-adaptive features.

# Load data
library(datasets)
head(iris)

# Get help from R documents for a function
?plot

# Plot one variable
plot(iris$Species) # Category
plot(iris$Petal.Length) # Quantitative

# Plot two variables
plot(iris$Species,iris$Petal.Length)
plot(iris$Sepal.Length,iris$Species)
plot(iris$Petal.Length,iris$Petal.Width)

# Plot entire data set
plot(iris)

# Change plot presentation
plot(iris$Petal.Length,iris$Petal.Width,
     col = "#cc0000", # red
     pch = 19, # solid circle, google "R plot pch" for more
     main = "This is title.",
     xlab = "This is x label.",
     ylab = "This is y label.")

# Plot maths
plot(dnorm,-3,3,
     col = "#cc0000",
     main = "Normal Distribution PDF"
     ) # plot density normal distribution

## Part 2. Bar charts
















