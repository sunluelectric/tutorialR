### File: lesson101.R

# NOTE: R is CASE SENSITIVE!!!

## Part 1: Load data sets from build-in library, and analyze/visualize the data.

# For system build-in libraries, use library() to load a package
library(datasets)

# Display partial of the data
# Note: iris is a data set pre-defined in datasets
head(iris)

# Display statistical information of the data
summary(iris)

# Plot the data for visualization
plot(iris)

# For system build-in libraries, use detach() to unload a package
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()

# Clear console
# ctrl + L

## Part 2. Install third-party packages using pacman on RStudio

# Install a package manually using install.packages()
install.packages("pacman")

# Load pacman
require(pacman) # Display message on console
library(pacman) # Do not display message on console

# Install and load third-party packages using pacman
# This command will take very long time to execute if there are few packages pre-installed!
# The packages may require pre-installed or pre-configured environment for the PC.
# Use warnings() to check warnings and install the missing prerequisite packages individually if necessary.
# for example, use sudo apt-get install openssl to install openssl, etc.
pacman::p_load(pacman, dplyr,GGally,ggplot2,ggthemes,ggvis,httr,lubridate,plotly,rio,rmarkdown,
               shiny,stringr,tidyr)
# pacman: package management tool
# dplyr: data manipulation functions
# GGally, ggplot2, ggthemes, ggvis, plotly: data visualization functions
# httr: working with URLs and HTTP
# lubridate: date and time manipulation
# rmarkdown: documentation
# shiny: web apps development
# stringr: string operations wrapper
# tidyr: data tydying

# Unload packages
# Use p_unload from pacman to unload third-party packages
p_unload(all)

# Use detach command to unload build-in system packages, 
# e.g. detach("package:datasets", unload = TRUE)