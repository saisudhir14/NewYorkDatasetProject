library(nycflights13)
library(tidyverse)

install.packages("nycflights13")

install.packages("dplyr")

library(nycflights13)


head(flights)
#view complete

view(flights)

glimpse(flights)
#summary(flights)

flights
#Filter rows, 
flights |> 
  fliter (dest == "IAH") |>
  group_by(year, month, day) 

#filter() - allows you to keep rows based on the values of the columns, first argument is the row.
  #subsequent arguments are  the conditions that must be true to keep the row.

flights |>
  filter(dep_delay >= 120)

view()

flights |>
  filter(month == 1 & day == 1)
print.default(flights, n= 20)
#Use print(n = ...)` to see more rows

#flights departed in january or february

flights |>
  filter(month %in% c(3,1))


flights |>
  filter(month %in% c(3,2))

#new data frame. dplyr executes filtering operation,creating a new dataframe.
#and then prints it. It doesn't modify existing flights dataset because dplyr functions never modify their inputs.
#to save result, you need to use assignment operator <-

jan1 <- flights |>
  filter(month == 1 & day ==1)

jan1

flights |>
  filter(month == 2 | month == 1)



#dplyr , arrange()
# changes the order of the rows based on the value of the columns. It takes a data frame and a set of column names
#if you provide more than one column name, each additional column will be used to break ties in the values of preceding columns.

flights |>
  arrange(desc(dep_delay))

flights |>
  distinct()

#find all unique origin destination pairs
flights |> 
  distinct(origin, dest)

# Find all unique origin-destination pairs
unique_pairs <- flights %>%
  distinct(origin, dest)

# Printing the first 40 rows 
print(unique_pairs, n = 40)

#in case if we need other columns when filtering for unique rows, we can use .keep_all = TRUE option.
flights |> 
  distinct(origin, dest, .keep_all = TRUE)

# in case if we need to find the number of occurences instead, use distinct() for count()
#this follows DESC approach 
  flights |> 
  count(origin,dest, sort = TRUE)


#exercises on rows
#Had an arrival of two or more hours
  
find_delayed_flights1 <-  
  flights |>
  filter(dep_delay >= 120)

find_delayed_flights1

#exercise 2 - find flights flew to Houston from IAH or HOU

find_flew_to_IAH_two_HOU <- 
  flights |>
  filter(dest == "HOU" | dest == "IAH")
find_flew_to_IAH_two_HOU

#were operated by united, american or Delta

find_carrier <-
  flights |>
  filter(carrier %in% c("UA","AA","DL"))
find_carrier

find_carrier2Pipe <-
  flights |>
  filter(carrier =="UA","AA","DL")
find_carrier

#exercise find departed in summer
flights |>
  filter( month  %in% c (7,8,9))

#exercise arrived more than 2 hours late
arrival_late_departure_on_time <-
flights |>
  filter(arr_time > 120 & dep_delay <= 1)
arrival_late_departure_on_time 

# were delayed by at least an hour, made up in over 30 minutes in flight
flights |>
  filter(dep_delay >= 60 & air_time >= 30 & air_time <= 98, .keep_all = TRUE)


