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
