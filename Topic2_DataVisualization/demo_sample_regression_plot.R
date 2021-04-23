# demo_sample_regression_plot.R

##

# Load library
library(tidyverse)
View(diamonds)
?diamonds

# Plot and fit price as functions of carat and clarity
diamonds_price_analysis <- select(diamonds, price, carat, color, clarity)
diamonds_price_analysis <- subset(diamonds_price_analysis,
                                  diamonds_price_analysis[,"color"]=="D" &
                                    (diamonds_price_analysis[,"clarity"]=="IF" |
                                       diamonds_price_analysis[,"clarity"]=="VVS1" |
                                       diamonds_price_analysis[,"clarity"]=="VVS2"))
diamonds_price_analysis_group_by_carat <- group_by(diamonds_price_analysis, carat)
ggplot(data = diamonds_price_analysis_group_by_carat, mapping=aes(x=carat, y=price)) +
  geom_point(mapping = aes(color=clarity)) +
  geom_smooth(mapping = aes(linetype=clarity), se=TRUE)
