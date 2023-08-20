library(tidyverse)
library(ggplot2)
library(palmerpenguins)

# The three functions in the code are the ggplot function, the geom_point function, and the aes function. 
# 1. Every ggplot2 plot starts with the ggplot function. 
# The argument of the ggplot function tells R what data to use for your plot.
ggplot(data = penguins) + # use the plus sign to add layers to your plot
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# 2. choosing a geom to represent our data. 
# The function geom_point tells R to use points to represent our data.
# Geoms include points, bars, lines, and more

# 3. choose specific variables from our dataset and tell R how we want these variables to look in our plot.
# In ggplot2, the way a variable looks is called its aesthetic. 
# an aesthetic is a visual property of an object in your plot, like its position, color, shape, or size. 
# The mapping equals aes part of the code tells R what aesthetics to use for the plot. 
# You use the aes function to define the mapping between your data and your plot.

# To create a plot, follow these three steps: 
# 1. start with the ggplot function and choose a dataset to work with, 
# 2. add a geom_function to display your data, 
# 3. map the variables you want to plot in the argument of the aes function.

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species), color ="purple")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, size = species))