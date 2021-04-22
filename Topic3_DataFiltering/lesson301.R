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
ontime_flights = filter(flights, !(arr_delay > 0 | dep_delay > 0))
View(ontime_flights)
# "NA" is a special value. Most operations based on "NA" will return "NA". Use
# is.na(x) to check whether x is NA.

## Exp4: Re-arrange the rows in a table, following particular order of an 
# attribute.
rearrange_flights <- arrange(flights, dep_time)
View(rearrange_flights)
rearrange_flights <- arrange(flights, desc(dep_time))
View(rearrange_flights)
# Explanation to Exp4:
# Function arrange() can sort the rows in a table, based on the specified
# attribute. However, it will not change the order of attribute.
# Attribute with value "NA" will be sorted at last.

## Exp5: Create a table with only selected attributes.
selected_attribute_flight <- select(flights, year, month, day, carrier, ends_with("delay"))
View(selected_attribute_flight)
selected_attribute_flight <- select(flights, time_hour, everything())
View(selected_attribute_flight)
# Explanation to Exp5:
# Use select() to select (or rename) the attributes that is to be appeared in
# the new table.
# Use "everything()" to represents everything else other than those attributes
# already appeared. This is used to change the order of the attribute and put
# a few of them to the front.

## Exp6: Add a new attribute z to the table. Variable z is a function of existing
# attributes x and y.
tab1 <- select(flights, year:day, distance, air_time)
tab2 <- mutate(tab1, speed1=distance/air_time, speed2=speed1*60)
View(tab2)
tab3 <- transmute(tab1, speed1=distance/air_time, speed2=speed1*60)
View(tab3)
# Explanation to Exp6:
# Function mutate will append new attributes to a table.
# Function transmute will create and use only new attributes in the table.
# Commonly used arithmetic operators: +, -, *, /, ^, %/% (integer division),
# %% (remainder), log(), log2(), log10(), lead(), lag(), cumsum(), cumprod(),
# commin(), commax(), commean(), etc.

# Exp7: Calculate the mean of attribute x in a table (for x!= NA)
# 7-1:
summarize(flights, delay=mean(dep_delay, na.rm=TRUE))
summarize(flights, delay=mean(dep_delay[dep_delay>0], na.rm=TRUE))
# Explanation to Exp7:
# Use summarize() to get the statistics summarize of attribute(s). 
# "na.rm==TRUE" argument removes NA values during the calculation.
# It is possible to use group_by() to first group the entire table then 
# calculates the statistics of each group separately, e.g.
# 7-2:
flights_by_months = group_by(flights, year, month)
delay_by_months <- summarize(flights_by_months, delay=mean(dep_delay, na.rm=TRUE), n=n())
View(delay_by_months)
ggplot(data=delay_by_months, mapping=aes(x=month, y=delay)) +
  geom_smooth(se=FALSE)
ggplot(data=delay_by_months, mapping=aes(x=n, y=delay)) +
  geom_point()
# Some useful statistics operators are: mean(), sd(), IQR(), mad(), min(),
# max(), quantile(). Use sum(!is.na(x)) to calculate non-NA attribute x number.




