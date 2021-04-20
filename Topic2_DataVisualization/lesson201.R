# lesson201.R
# This program demonstrates the use of data visualization tool(s) in R.
# The data frame(s) used in the demonstration are, e.g., mpg from package tidyverse.
# As preliminary assumptions, the data frame(s) are in rectangular form.

##
## Load package
library(tidyverse)
head(mpg)
?mpg

## Exp1: Visualize x-y in a 2-D plot where x, y are continuous values.
# 1-1:
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy), color="black")
# 1-2:
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(), color="black")
?ggplot
?geom_point
# Explanation to Exp1:
# ggplot() initializes a ggplot object, i.e. a "figure" in this example.
# "data" defines the default data frame to be used for plotting.
# "mapping = aes()" defines the default aesthetic mappings to be used in the plot. This can also
# be defined in geom_xxx()
# geom_xxx difines different types of plots, e.g. scatterplots, bar chart, etc.

## Exp2: Visualize x-y-z in a 2.5-D plot where x, y are continuous values and z is
# category value.
# 2-1:
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, color=class))
# 2-2:
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color=class))
# Explanation to Exp2:
# geom_point(mapping=aes(...)) has multiple inputs that can be used in 2.5-D plotting, including
# alpha (transparency), color, size, shape, etc.
# Some of these inputs, e.g. alpha and size, are good for continuous variable display,
# while others, e.g. color, shape, are more for category value display.

# It is also possible to superpose multiple mapping effect on the same figure. For example,
# 2-3:
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color=class, shape=drv))
# 2-4:
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_point(mapping=aes(alpha=cyl))

## Exp3: Visualize x-y in 2-D plots, with z being used to split the plots into facets.
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(alpha=cyl, color=drv)) +
  facet_wrap(~class, nrow=2)

## Exp4: visualize x0y in 2-D plots, with a, b being used to split the plots into facets.
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes()) +
  facet_grid(drv ~ cyl)

# Explanation to Exp3, Exp4:
# facet_wrap and facet_grid can be used to split the plots into facets based on the third/fourth
# discrete attribute of the samples.



