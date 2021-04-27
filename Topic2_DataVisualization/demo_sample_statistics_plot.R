# demo_sample_statistics_plot.R

##

# Load library
library(tidyverse)
View(diamonds)
?diamonds

# Plot the distribution of diamonds samples based on carat and clarity
# Bar chart
diamonds_distribution_analysis <- select(diamonds, price, carat, color, clarity)
ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping = aes(x = carat))
ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping = aes(x = clarity))
ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping=aes(x = clarity, y = stat(prop), group = 1))

# Plot the distribution of diamonds samples with coordination conversion
diamondplot <- ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping=aes(x = color, fill = clarity), position="dodge")
diamondplot + coord_flip()
diamondplot + coord_polar()

# Histogram
ggplot(data = diamonds_distribution_analysis) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)
# Output the value of each histogram using dplyr::count() and ggplot2::cut_width()
diamonds %>%
  count(cut_width(carat, 0.5))

ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping=aes(x = color, fill = clarity))
ggplot(data = diamonds_distribution_analysis) +
  geom_bar(mapping=aes(x = color, fill = clarity), position="dodge")

# 2-D Histogram
ggplot(data = diamonds) + 
  geom_bin2d(mapping = aes(x=carat, y=price))
ggplot(data = diamonds) + 
  geom_hex(mapping = aes(x=carat, y=price))
ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x=carat, y=price, group = cut_width(carat, 0.1)))
ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x=carat, y=price, group = cut_number(carat, 25)))


