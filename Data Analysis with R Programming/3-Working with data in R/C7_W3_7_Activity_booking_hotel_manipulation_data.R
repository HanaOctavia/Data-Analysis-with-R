## The Scenario
# In this scenario, you are a junior data analyst working for a hotel booking company. 
# You have been asked to clean a .csv file that was created after querying a database to combine two different tables from different hotels. 
# You have already performed some basic cleaning functions on this data; 
# this activity will focus on using functions to conduct basic data manipulation.

# Step 1: Load packages
library("tidyverse")
library("skimr")
library("janitor")
library("dplyr")

# Step 2: Import data
df_hotel_bookings <- read.csv("C:/Users/hanao/Documents/hotel_bookings.csv")

# Step 3: Getting to know your data
head(df_hotel_bookings)

str(df_hotel_bookings)

glimpse(df_hotel_bookings)

colnames(df_hotel_bookings)

skim_without_charts(df_hotel_bookings)

## Step 4: Manipulating your data
arrange(df_hotel_bookings, desc(lead_time))

# find out the maximum and minimum lead times without sorting the whole dataset using the `arrange()` function. 
# Try it out using the max() and min() functions
max(df_hotel_bookings$lead_time)
min(df_hotel_bookings$lead_time)
mean(df_hotel_bookings$lead_time)

# creating a new dataset that only contains data about city hotels. You can do that using the `filter()` function
hotel_bookings_city <- filter(df_hotel_bookings, df_hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)

# Now, your boss wants to know a lot more information about city hotels, including the maximum and minimum lead time. 
# They are also interested in how they are different from resort hotels. You don't want to run each line of code over and over again, so you decide to use the `group_by()`and`summarize()` functions.
hotel_summary <- 
  df_hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
            
head(hotel_summary)

