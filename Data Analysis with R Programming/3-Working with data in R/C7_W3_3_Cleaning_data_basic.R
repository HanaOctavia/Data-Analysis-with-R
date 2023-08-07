## Cleaning data basic
# install the Here, Skimr and Janitor packages
# Here package makes referencing files easier
install.packages("here")
library("here")

# The Skimr package makes summarizing data really easy and let's you skim through it more quickly
install.packages("skimr")
library("skimr")

# The Janitor package has functions for cleaning data
install.packages("janitor")
library("janitor")

# load dplyr
library("dplyr")

# Use palmer penguin package
install.packages("palmerpenguins")
library("palmerpenguins")

# Cleaning penguin dataset
# "skim_without_charts" function, gives us a pretty comprehensive summary of a dataset
# It also gives us the column types and a summary of the different data types contained in the data frame
skim_without_charts(penguins)

# "glimpse" function, to get a really quick idea of what's in this dataset
glimpse(penguins)

# "select" function, to show spesific columns
# show "species" columns
penguins %>% 
  select(species)

# show all columns except "species" columns
penguins %>% 
  select(-species)

# "rename()" to change columns name
penguins %>% 
  rename(island_new=island)

# "rename_with()" to change columns name to more consistent
rename_with(penguins, tolower)

# "clean_names()" in the Janitor package will automatically make sure that the column names are unique and consistent
clean_names(penguins)