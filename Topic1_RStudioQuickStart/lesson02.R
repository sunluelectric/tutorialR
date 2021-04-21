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

head(mtcars)

# Create a summary table using table()
cylinders <- table(mtcars$cyl)
# mtcars$cyl: 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 8 4 4 4 4 8 8 8 8 4 4 4 8 6 8 4
# table(mtcars$cyl), cylinders:
# 4  6  8 
# 11  7 14
# The "table" command automatically grouped the mtcars$cyl into 3 different categories

# bar plot the table
barplot(cylinders)
plot(cylinders) # "line" shape bar 

## Part 3. Histogram

# Simple histogram
hist(iris$Sepal.Length)

# Plot with selector
hist(iris$Petal.Width[iris$Species=="setosa"], # selector
     xlim = c(0,3), # x axis range
     breaks = 9,
     main = "Petal Width for Sentosa",
     xlab = "",
     col = "red"
     )

# Subplots
par(mfrow = c(3,1))
hist(iris$Petal.Width[iris$Species=="setosa"], # selector
     xlim = c(0,3), # x axis range
     breaks = 9,
     main = "Petal Width for Sentosa",
     xlab = "",
     col = "red"
)
hist(iris$Petal.Width[iris$Species =="versicolor"], # selector
     xlim = c(0,3), # x axis range
     breaks = 9,
     main = "Petal Width for Vercicolor",
     xlab = "",
     col = "purple"
)
hist(iris$Petal.Width[iris$Species=="virginica"], # selector
     xlim = c(0,3), # x axis range
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue"
)

# Roll-back subplot
par(mfrow=c(1,1))

detach("package:datasets", unload = TRUE)
