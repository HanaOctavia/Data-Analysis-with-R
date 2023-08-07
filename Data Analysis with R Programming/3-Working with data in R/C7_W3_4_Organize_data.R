## Organize our Data
# Organizing our data and comparing different metrics from that data helps us find new insight

library(tidyverse)
library("palmerpenguins")

# Short the data with arrange()
penguins_df <- penguins %>% 
  arrange(-bill_length_mm) #Desc order

penguins_df

# summarize our dataset
penguins_df <- penguins %>% 
  group_by(island) %>% 
  drop_na() %>% # drop null values
  summarize(penguins_bill_lenght = mean(bill_length_mm))

penguins_df

# return mean and max values
penguins_df <- penguins %>% 
  group_by(island, species) %>% 
  drop_na() %>% # drop null values
  summarize(mean_penguins_bill_length = mean(bill_length_mm), max_penguins_body_mass = max(body_mass_g))

penguins_df

# filter our dataset
penguins_df <- penguins %>% 
  select(island, species, bill_depth_mm, flipper_length_mm) %>% 
  filter(island == "Biscoe")

penguins_df