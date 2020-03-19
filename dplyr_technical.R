library(nycflights13)
library(tidyverse)

# Operations in dplyr

# filter() : Pick observation by their value
# arrange() : Reorder the rows
# select() : Pick variables by their names
# mutate() : Create new variables with functions of existing variables
# summarise() : collapse many values down to a single summary

# to get all flights on day 1 of January

filter(flights, month == 1, day == 1)

# To get either in month of November or December

filter(flights, month == 11 | month == 12)

# In short hand

nov_dec <- filter(flights, month %in% c(11,12))
nov_dec

# To filter the flights that were not delayed by more than two hours 

filter(flights, !(arr_delay > 120 | dep_delay > 120))

# To filter flights in air for more than 12 hours of 720 minutes and less than an hour or 60 minutes

filter(flights, air_time >= 720 | air_time <= 60)

# Exercise

filter(flights, arr_delay < 120)

filter(flights, dest == "IAH" | dest == "HOU")

filter(flights, carrier == "UA" | carrier == "AA" | carrier == "DL")

filter(flights, month == 7 | month == 8 | month == 9)

filter(flights, arr_delay > 120 | dep_delay <= 0)

flights[between(flights$month, 7,9),]

filter(is.na(flights$year))




