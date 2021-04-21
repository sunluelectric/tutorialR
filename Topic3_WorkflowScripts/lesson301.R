# lesson301.R
# This program demonstrates the basics about R work flow script.
# Commonly used script methods such as data transformation methods are
# also introduced.

## Exp1: Create and reveal a variable
variable_name <- 1
variable_name
variable_name_2 <- "This is a string!"
variable_name_2
# Explanation to Exp1:
# Use <- to assign a value to a variable. No declaration of type is required.

## Exp2: Call a function, and assign the output to a variable, 
# and output the result on the screen.
y <- seq(1, 10, 2)
(y <- seq(1, 10, 2))
# Explanation to Exp2:
# The assigning of the output of a function to a variable is similar to the
# assigning of a constant value. Use () in the expression to output to
# screen.

### Below introduces some commonly used data transformation methods.

# Preparation
library(nycflights13)
library(tidyverse)
# Notice the conflicts
# x dplyr::filter() masks stats::filter()
# x dplyr::lag()    masks stats::lag()
# Use stats::filter() and stats::lag() for the original base functions.

# Data frame nycflights13::flights will be used for analysis. Check the basic
# information of the data frame.
head(flights)
summary(flights)
# Check the entire data set using RStudio viewer
View(flights)

# The following data types are commonly used in R. Some of them are used in
# data frame flights.
# int: integer
# dbl: double float
# chr: character or string
# dttm: date-and-time
# lgl: boolean, TRUE or FALSE
# fctr: factors
# date: date

## Exp3: From the data frame flights, filter every flight that happens on Jan 1st.
# 3.1:
new_year_flights = filter(flights, month==1, day==1)
View(new_year_flights)
# Explanation to Exp3:
# Function filter() provides filtering of a data frame and generate a new
# data frame. "==", "!=", "<", "<=", ">", ">=" are widely used comparison
# operators. Sometimes for float value, use "near(a, b)" instead of "a==b".
# Logic operator AND and OR is given by "," and "|" respectively.
# The logic expression can be given in complicated form, such as
# 3.2:
ontime_flight = filter(flights, !(arr_delay > 0 | dep_delay > 0))
View(ontime_flight)
# "NA" is a special value. Most operations based on "NA" will return "NA". Use
# is.na(x) to check whether x is NA.

## Exp4: 






