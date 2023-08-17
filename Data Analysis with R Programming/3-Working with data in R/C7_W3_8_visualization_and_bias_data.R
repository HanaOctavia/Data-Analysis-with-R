install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)
install.packages("dplyr")
library("dplyr")

# get a summary of these statistical measures
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

# standard deviation sd() can help to understand the spread of values in a dataset and show how far each value is from the mean
# correlation cor(), which shows us how strong the relationship between two variables is

# Based on the summaries we created with our statistical measures, these datasets are identical, 
# but sometimes just looking at the summarized data can be misleading
# put together some simple graphs to help us visualize this data and check if the datasets are actually identical
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)

# Visualization with The datasauRus package. 
# The datasauRus creates plots with the Anscombe data in different shapes. 
install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3) 

## Bias Function
# we can actually quantify bias by comparing the actual outcome of our data with the predicted outcome
# Basically the bias function finds the average amount that the actual outcome is greater than the predicted outcome. 
# It's included in the sim design package.
# If the model is unbiased, the outcome should be pretty close to zero. 
# A high result means that your data might be biased
install.packages("SimDesign")
library(SimDesign)

# We'll use the bias function to compare forecasted temperatures with actual temperatures. 
# For this example we'll just take a small sample of our weather data and input them here. 
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp) # value : 0.71667

# That's pretty close to zero but the prediction seemed biased towards lower temperatures which, means they aren't as accurate as they could be