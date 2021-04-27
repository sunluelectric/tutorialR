# demo_tibble_management.R

##

# "tibble" is the relational database table structure that is used to store data
# in R.
# Tibble is used in tidyverse. NOT all table-like data in R are stored in
# tibble, but some of them are in normal data frame.

# Load library
library(tidyverse)

# Create tiddle from normal data frame
tibble_iris <- as_tibble(iris)
iris
tibble_iris

# Create tibble from scratch 
tibble_self_defined <- tibble(
  x = 1:10,
  y = x^2,
  z = 1
)
tibble_self_defined
tibble_self_defined <- tribble(
  ~x, ~y, ~z,
  1, 1, 1,
  2, 4, 1,
  3, 9, 1,
  4, 16, 1
) # tribble() is more fore machine-to-machine
tibble_self_defined

# Access particular attributes of a tibble
tibble_self_defined$x # tibble
tibble_self_defined[["y"]] # tibble

classic_dataframe_self <- data.frame(
  x = 1,
  y = "Hello World!"
)
classic_dataframe_self %>% .$y # classic data frame







