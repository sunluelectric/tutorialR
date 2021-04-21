# lesson202.R
# This program demonstrates the use of data visualization tool(s) in R.
# As preliminary assumptions, the data frame(s) are in rectangular form.
# This program demonstrates the use of ggplot() and 

##
## Load package
library(tidyverse)
head(diamonds)
?diamonds
?ggplot
?geom_bar

## Exp1: Visualize the number_of_samples vs x, where x is a category value.
# 1-1:
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut))
ggplot(data=diamonds) +
  geom_bar(mapping=aes(y=clarity))
# Explanation to Exp1:
# By default, when using geom_bar(), the "count", i.e. number of samples is 
# displayed on the y-axis.
# It is possible to "override" the default mapping functions flexibly. As a 
# commonly used example, replace the number of samples by the probability of 
# samples as follows.
# 1-2:
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut, y=stat(prop), group=1))

## Exp2: 



