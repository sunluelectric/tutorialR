# demo_sample_regression_plot.R

##

# Load library
library(tidyverse)
View(diamonds)
?diamonds

# Plot and fit price as functions of carat, cut, color, clarity
diamonds_price_analysis <- select(diamonds, price, carat, cut, color, clarity)
diamonds_price_analysis <- subset(diamonds_price_analysis,
                                  diamonds_price_analysis[,"color"]=="D" | diamonds_price_analysis[,"color"]=="J")
diamonds_price_analysis_group_by_carat <- group_by(diamonds_price_analysis, carat)
ggplot(data = diamonds_price_analysis_group_by_carat, mapping=aes(x=carat, y=price)) +
  geom_point(mapping = aes(color=color)) +
  geom_smooth(mapping = aes(linetype=color), se=TRUE) #+
  # facet_grid(color ~ clarity)

