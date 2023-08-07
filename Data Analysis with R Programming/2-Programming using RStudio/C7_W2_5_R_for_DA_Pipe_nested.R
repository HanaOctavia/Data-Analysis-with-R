## Pipe

# a pipe is a tool in R for expressing a sequence of multiple operations. 
# In other words, it takes the output of one statement and makes it the input of the next statement.

# In programming, we describe this as nested. 
# Nested describes code that performs a particular function and is contained within code that performs a broader function

# you've got sales data and you need to find the mean or average. You can create a pipe by calling up the data  
# and then grouping the data and then summarizing the group data using a mean function.

# ToothGrowth exploration

# Install package dplyr
# Dplyr offers set of functions that help to complete some common data manipulation tasks
install.packages('dplyr')
library(dplyr)

# load data
data("ToothGrowth")
View(ToothGrowth)


# filtering the dataset with filter()->part of the dplyr package
filter(ToothGrowth, dose==0.5)

# use nested commands
# arrange the data by len with ascending order and the filter with dose==0.5
arrange(filter(ToothGrowth, dose==0.5),len)

# Use Pipe
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

# add group by function and then summarize to show mean by len of each supp
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T),.groups = "drop") 
