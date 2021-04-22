# demo_sample_direct_plot.R

##

# Load library
library(tidyverse)
View(mpg)
?mpg

# 2-D plot
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) +
  geom_point(color = "black", position='jitter')

# 2.5-D plot
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) +
  geom_point(mapping = aes(color = drv), position='jitter')
# For 2.5-D plot, alpha(transparency), color, shape, etc., can be used as the
# third axis.

# Facets subplot
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(alpha=cyl, color=drv)) +
  facet_wrap(~class, nrow=2)
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color = year), alpha = 0.5) +
  facet_grid(drv ~ cyl)
