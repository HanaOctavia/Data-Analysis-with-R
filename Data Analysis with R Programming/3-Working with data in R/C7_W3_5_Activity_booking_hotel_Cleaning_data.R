## The scenario

# In this scenario, you are a junior data analyst working for a hotel booking company. 
# You have been asked to clean a .csv file that was created after querying a database to combine 
# two different tables from different hotels. In order to learn more about this data, 
# you are going to need to use functions to preview the data's structure, 
# including its columns and rows. You will also need to use basic cleaning functions to prepare 
# this data for analysis. 

# Step 1: Load packages
library("tidyverse")
library("skimr")
library("janitor")

# Step 2: Import data
df_hotel_bookings <- read.csv("C:/Users/hanao/Documents/hotel_bookings.csv")

# Step 3: Getting to know your data
head(df_hotel_bookings)

str(df_hotel_bookings)

glimpse(df_hotel_bookings)

colnames(df_hotel_bookings)

skim_without_charts(df_hotel_bookings)

# Step 4: Cleaning your data
# Based on the functions you have used so far, how would you describe your data in a brief to your stakeholder? 
# Now, let's say you are primarily interested in the following variables: 'hotel', 'is_canceled', and 'lead_time'.
# Create a new data frame with just those columns
trimmed_df <- df_hotel_bookings %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename( hotel_type = hotel)

head(trimmed_df)

# Another common task is to either split or combine data in different columns. In this example, 
# you can combine the arrival month and year into one column using the unite() function
example_df <- df_hotel_bookings %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

head(example_df)

# Step 5: Another way of doing things
# use the`mutate()` function to make changes to your columns. 
# create a new column that summed up all the adults, children, and babies on a reservation for the total number of people. 
example_df <- df_hotel_bookings %>%
  mutate(guests = adults + children + babies)

head(example_df)

# Calculate the total number of canceled bookings and the average lead time for booking - 
# Make a column called 'number_canceled' to represent the total number of canceled bookings. 
# Then, make a column called 'average_lead_time' to represent the average lead time. 
# Use the `summarize()` function
example_df <- df_hotel_bookings %>%
  summarize(number_canceled = sum(is_canceled), 
            average_lead_time = mean(lead_time))

head(example_df)
