# Exercise 6: DPLYR join introduction

# Install the nycflights13 package and read it in. Require the dplyr package.
# install.packages("nycflights13")
library(nycflights13)
library(dplyr)

flights <- data.frame(flights)
View(airports)
# Create a dataframe of the average arrival delay for each destination, then use left_join
# to join on the "airports" dataframe, which has the airport info
avg.arr.delay <- flights %>% 
  select(dest) %>% 
  summarise(delay = mean(arr_delay, na.rm = TRUE)) %>% 
  merge(faa = dest) %>%
  left_join(flights, airports, by = "faa") %>%
  arrange(-delay)

  

# Create a dataframe of the average arrival delay for each airline, then use left_join
# to join on the "airlines" dataframe, which has the airline info



### Bonus ###
# Calculate the average delay by city AND airline, then merge on the city and airline information


# If you're running into sorting issues:
# http://stackoverflow.com/questions/26555297/dplyr-arrange-a-grouped-df-by-group-variable-not-working