install.packages("tidyverse")

library(tidyverse)

library(lubridate)

# this is comment in R

# Functions
print("Hello world")
print(67)

# Variable
nama <- "Hana"
umur <- 21

# Vector (atomic vector) is a group of data elements of the same type
# to create a vector is by using the c() function (called the “combine” function)
vec_num <- c(12, 3, 5.5, 4, 9)

# create a vector of integers, place the letter "L" directly after each number
vec_int <- c(1L, 23L, 45L, 9L, 10L)

# create a vector of characters
vec_char <- c("Apple", "Banana", "Cherry")

# create a vector of logical
vec_log <- c(TRUE, FALSE, TRUE)

# determine what type of vector you are working with by using the typeof() function
typeof(vec_char)

#  determine the length of an existing vector with length()
length(vec_log)

# check if a vector is a specific type by using an is function: 
# is.logical(), is.double(), is.integer(), is.character()
is.logical(vec_char)
is.double(vec_num)

# name the elements of a vector with the names() function. 
# As an example, let’s assign the variable x to a new vector with three elements. 
vec_names <- c(1, 2, 3)
names(vec_names) <- c("one", "two", "three")
vec_names


# Lists are different from atomic vectors because their elements can be of any type
# You can create a list with the list() function
list("a", 1L, 1.5, TRUE)

# lists can contain other lists. you can even store a list inside a list inside a list
list(list(list(1 , 3, 5)))

# to find out what types of elements a list contains, you can use the str() function
str(list("a", 1L, 1.5, TRUE))

list_1 <- list(list(list(1 , 3, 5)))
str(list_1)

# Naming list
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)