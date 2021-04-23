# demo_table_simple_filtering.R

##

# Load library
library(nycflights13)
library(tidyverse)
View(flights)
?flights

# Filter out particular rows from a table
new_year_flights <- filter(flights, month == 1, day == 1)
View(new_year_flights)
new_year_flights <- filter(flights, month == 1 & day == 1 & !(is.na(arr_delay)))
View(new_year_flights)
# "=="/near(a, b), "!=", "<", "<=", ">", ">="
# "&", "|"

# Re-arrange the sequence of rows based on one particular attribute
rearrange_flights <- arrange(flights, dep_time)
View(rearrange_flights)
rearrange_flights <- arrange(flights, desc(dep_time))
View(rearrange_flights)

# Create a table but with only selected attributes from the existing table,
# or change the sequence of attributes
selected_attribute_flight <- select(flights, year, month, day, carrier, ends_with("delay"))
View(selected_attribute_flight)
selected_attribute_flight <- select(flights, time_hour, everything())
View(selected_attribute_flight)

# Create a new table with new attributes based on existing table
tab1 <- select(flights, year:day, distance, air_time)
tab2 <- mutate(tab1, speed1 = distance/air_time, speed2 = speed1*60)
View(tab2)
tab3 <- transmute(tab1, speed1 = distance/air_time, speed2 = speed1*60)
View(tab3)
# Commonly used arithmetic operators: +, -, *, /, ^, %/% (integer division),
# %% (remainder), log(), log2(), log10(), lead(), lag(), cumsum(), cumprod(),
# commin(), commax(), commean(), etc.

# Calculate statistics of a table attribute
summarize(flights, delay=mean(dep_delay, na.rm=TRUE))
summarize(flights, delay=mean(dep_delay[dep_delay>0], na.rm=TRUE))
# The above calculates the statistics of the attribute from the entire table.
# It is also possilbe to group the table first, then calculate the statistics
# of the attribute for each group separately.
flights_by_months = group_by(flights, year, month)
delay_by_months <- summarize(flights_by_months, delay=mean(dep_delay, na.rm=TRUE), n=n())
View(delay_by_months)
