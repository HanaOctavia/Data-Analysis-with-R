library(tidyverse)

library(lubridate)

# to get the current date you can run the today() function
today()

# To get the current date-time you can run the now() function
now()

# Converting date-time from strings 
# The ymd() function and its variations create dates
ymd("2021-01-20")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)

# Creating date-time components
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")

# use the function as_date() to convert a date-time to a date
as_date(now())