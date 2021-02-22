### File: lesson104.R

library(datasets)
head(iris)

## Part 1. Check summary of different information
summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

## Part 2. Get more details using describe() (supported by third-party package)
pacman::p_load(pacman, dplyr,GGally,ggplot2,ggthemes,ggvis,httr,lubridate,plotly,rio,rmarkdown,
               shiny,stringr,tidyr)

# Install and load psych
p_load(psych)

# Check help document for psych
p_help(psych, web=F)

# Check quantitative variable
describe(iris$Sepal.Length)
describe(iris)

## Part 3. Select data using []
hist(iris$Petal.Length[iris$Species=="versicolor"],
     main = "Petal Length: Versicolor"
     )
hist(iris$Petal.Length[iris$Petal.Length < 5.5 & iris$Species=="virginica"],
     main = "Petal Length < 5.5"
)

## Part 4. Create self-defined dataset using <-
mydata <- iris[iris$Petal.Length>3,]
head(mydata)
