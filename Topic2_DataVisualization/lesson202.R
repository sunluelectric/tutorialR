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
  geom_bar(mapping=aes(x=cut, fill=clarity))
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut, fill=clarity), position="dodge")
ggplot(data=diamonds) +
  geom_bar(mapping=aes(y=clarity))
# Explanation to Exp1:
# By default, when using geom_bar(), the "count", i.e. number of samples is 
# displayed on the y-axis.
# It is possible to add additional category value to make the figure 2.5-D.
# It is possible to "override" the default mapping functions flexibly. As a 
# commonly used example, replace the number of samples by the probability of 
# samples as follows.
# 1-2:
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut, y=stat(prop), group=1))

## Exp2: Visualize x-y where x is a continuous value and y is a category value.
# The figure describes the distribution of x for samples in each y.
ggplot(data=diamonds) +
  stat_summary(
    mapping=aes(x=cut, y=depth),
    fun.min=min,
    fun.max=max,
    fun=median
    )
# Explanation to Exp2:
# stat_summary() is a powerful and flexible function. It has a list of inputs.
# Details can be found in ?stat_bin and ?stat_summary.

## Exp3: given a bar chart
# ggplot(data=diamonds) +
#   geom_bar(mapping=aes(x=cut, fill=clarity))
# quickly convert it into a polar chart.
barchart <- ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut, fill=clarity))
barchart + coord_flip()
barchart + coord_polar()
# Explanation to Exp3:
# Coordinate conversion is supplorted by ggplot(). The functions are flexible
# and complicated. coord_flip() can be used to flip x and y axis. coord_polar()
# converts a rectangular bar chart to a polar chart (NOT pie chart!).
