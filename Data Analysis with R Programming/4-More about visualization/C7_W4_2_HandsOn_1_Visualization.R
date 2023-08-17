## Background for this activity

# In this activity, you'll review a scenario, and use ggplot2 to quickly create data visualizations that allow you to explore your data and gain new insights. You will learn more about basic ggplot2 syntax and data visualization in R. 
# Throughout this activity, you will also have the opportunity to practice writing your own code by making changes to the code chunks yourself. If you encounter an error or get stuck, you can always check the Lesson2_GGPlot_Solutions .rmd file in the Solutions folder under Week 4 for the complete, correct code. 


## The Scenario
# In this scenario, you are a junior data analyst working for a hotel booking company. You have cleaned and manipulated your data, and gotten some initial insights you would like to share. Now, you are going to create some simple data visualizations with the `ggplot2` package. You will use basic `ggplot2` syntax and troubleshoot some common errors you might encounter.  ```  

## Step 1: Import your data
# In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" and save it as a data frame called `hotel_bookings`:

hotel_bookings <- read.csv("C:/Users/hanao/Documents/hotel_bookings.csv")

## Step 2: Look at a sample of your data
# Use the `head()` function to preview your data: 
head(hotel_bookings)

# You can also use `colnames()` to get the names of all the columns in your data set. Run the code chunk below to find out the column names in this data set:
colnames(hotel_bookings)

## Step 3: Begin creating a plot
library(ggplot2)

# A stakeholder tells you, "I want to target people who book early, and I have a hypothesis that people with children have to book in advance."
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))


# The geom_point() function uses points to create a scatterplot. 
# Scatterplots are useful for showing the relationship between two numeric variables. 
# In this case, the code maps the variable 'lead_time' to the x-axis and the variable 'children' to the y-axis. 

# On the x-axis, the plot shows how far in advance a booking is made, with the bookings furthest to the right happening the most in advance. On the y-axis it shows how many children there are in a party.

# The plot reveals that your stakeholder's hypothesis is incorrect. 
# You report back to your stakeholder that many of the advanced bookings are being made by people with 0 children. 

## Step 5: Try it on your own

# Next, your stakeholder says that she wants to increase weekend bookings, an important source of revenue for the hotel. 
# Your stakeholder wants to know what group of guests book the most weekend nights in order to target that group in a new marketing campaign. 
# She suggests that guests without children book the most weekend nights. Is this true? 
  
# Try mapping 'stays_in_weekend_nights' on the x-axis and 'children' on the y-axis by filling out the remainder of the code below.

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x =stays_in_weekend_nights , y = children))

# If you correctly enter this code, you should have a scatterplot with 'stays_in_weekend_nights' on the x-axis and 'children' on the y-axis. 

# What did you discover? Is your stakeholder correct?
# the stakeholder is correct, in weekend many booking come from guests without children
# What other types of plots could you use to show this relationship?
# maybe barplot
  
