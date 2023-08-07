## Data frame
# A data frame is a collection of columns. It's a lot like a spreadsheet or a SQL table

## Create a data frame solutions

# Step 1: Load packages
library(tidyverse)

# Step 2: Create data frame
names <- c("Peter", "Jennifer", "Julie", "Alex")
age <- c(15, 19, 21, 25)

#With these two vectors, you can create a new data frame called `people`:
people <- data.frame(names, age)

# Step 3: inspect the data frame
# The head(), glimpse(), and str() summary functions allow you to preview data frames in R
# The head() function returns the columns and the first several rows of data
head(people)

# `str()` and `glimpse()` functions will both provide summaries of each column in data arranged horizontally
str(people)
glimpse(people)

# `colnames()` to get a list the column names in your data set
colnames(people)

# use `mutate()` if you wanted to create a new variable 
# we creat new variable that would capture each person's age in twenty years
mutate(people, age_in_20 = age + 20)

## Tibbles

# tibbles are like streamlined data frames. 
# They make working with data easier, but they're a little different from standard data frames
# Create Tibbles
data("diamonds")

View(diamonds)

# the tibble only returns the first 10 rows in a neatly organized table
as_tibble(diamonds)