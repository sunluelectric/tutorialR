# demo_data_import.R

##

# Load library
library(tidyverse)
write_csv(head(iris), "./iris_head.csv")

# Read from csv and create tibble
# read_csv(): comma delimited
# read_csv2(): semicolon delimited
# read_tsv(): tab delimited
# read_delim(): anything delimited
iris_head <- read_csv("./iris_head.csv")
iris_head
read_inline <- read_csv("x, y, z
  1, 1, 1
  2, 4, 1
  3, 9, 1
  4, 16, 1
  5, 25, 1")
read_inline
read_inline <- read_csv("Comment to be skipped...
  x, y, z
  1, 1, 1
  2, 4, 1
  3, 9, 1
  4, 16, 1
  5, 25, 1", skip = 1)
read_inline
read_inline <- read_csv("1, 1, 1
  2, 4, 1
  3, 9, 1
  4, 16, 1
  5, 25, 1", col_names = FALSE)
read_inline
read_inline <- read_csv("1, 1, 1
  2, 4, 1
  3, 9, 1
  4, 16, 1
  5, 25, 1", col_names = c("x", "y", "z"))
read_inline


