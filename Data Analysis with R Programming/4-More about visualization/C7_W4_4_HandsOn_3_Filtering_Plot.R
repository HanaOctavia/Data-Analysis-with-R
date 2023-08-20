## Step 1: Import your data
hotel_bookings <- read.csv("C:/Users/hanao/Documents/hotel_bookings.csv")


## Step 2: look at data
head(hotel_bookings)

colnames(hotel_bookings)


## Step 3: Install and load the 'ggplot2' package (optional)
install.packages('ggplot2')
library(ggplot2)

## Step 4: Making many different charts

# created a scatterplot to explore the relationship between booking lead time 
# and guests traveling with children
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Your stakeholder asked about the group of guests who typically make early bookings, 
# and this plot showed that many of these guests do not have children. 

# Now, your stakeholder wants to run a family-friendly promotion targeting key market segments. 
# She wants to know which market segments generate the largest number of bookings, and where these bookings are made (city hotels or resort hotels). 

# create a bar chart showing each hotel type and market segment. 
# use different colors to represent each market segment: 
  
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))


# The geom_bar() function uses bars to create a bar chart. The chart has 'hotel'
# on the x-axis and 'count' on the y-axis 
# (note: if you don't specify a variable for the y-axis, the code defaults to 'count'). 
# The code maps the 'fill' aesthetic to the variable 'market_segment' to generate color-coded sections inside each bar.  

# it's difficult to compare the size of the market segments at the top of the bars. You want your stakeholder to be able to clearly compare each segment.   
                                                                                                                        
# use the facet_wrap() function to create a separate plot for each market segment. 

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

## Step 5: Filtering
install.packages('tidyverse')
library(tidyverse)

# Your stakeholder asks if you can create a plot that shows the relationship between 
# lead time and guests traveling with children for online bookings at city hotels. 
# This will give her a better idea of the specific timing for the promotion. 

# break it down into the following two steps: 
# 1) filtering your data; 2) plotting your filtered data. 

# filtering a dataset to just city hotels that are online TA
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))

# use the '&' character to demonstrate that you want two different conditions to be true. 
# use the '$' character to specify which column in the data frame 'hotel_bookings' you are referencing (for example, 'market_segment'). 

# use the`View`() function to check out your new data frame:
View(onlineta_city_hotels)


# use the pipe operator (%>%) to do this in steps! 
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels_v2)


## Step 6: Use your new dataframe
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

# this scatterplot shows data for online bookings for city hotels. 
# The plot reveals that bookings with children tend to have a shorter lead time, 
# and bookings with 3 children have a significantly shorter lead time (<200 days). 
# So, promotions targeting families can be made closer to the valid booking dates.  