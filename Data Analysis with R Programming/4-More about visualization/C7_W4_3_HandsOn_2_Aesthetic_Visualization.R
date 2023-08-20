
## Step 1: Import your data
hotel_bookings <- read.csv("C:/Users/hanao/Documents/hotel_bookings.csv")

## Step 2: look at data
head(hotel_bookings)

colnames(hotel_bookings)


## Step 3: Install and load the 'ggplot2' package (optional)
install.packages('ggplot2')
library(ggplot2)

## Step 4: Making a Bar Chart

# Your stakeholder is interested in developing promotions based on different 
# booking distributions, but first they need to know how many of the transactions 
# are occurring for each different distribution type.

# You can tell `ggplot()` what type of chart you want to create by using the 
# `geom_` argument. 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

## Step 5: Diving deeper into bar charts

# After exploring your bar chart, your stakeholder has more questions. 
# Now they want to know if the number of bookings for each distribution type 
# is different depending on whether or not there was a deposit or what market 
# segment they represent. 


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))


## Step 6: Facets galore

# your stakeholder asks you to create separate charts for each deposit type and 
# market segment to help them understand the differences more clearly.


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type )


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))



ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

