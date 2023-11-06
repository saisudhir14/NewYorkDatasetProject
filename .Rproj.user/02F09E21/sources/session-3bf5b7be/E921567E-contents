library(nycflights13)
library(tidyverse)

install.packages("nycflights13")

install.packages("dplyr")
library(dplyr)

#working on columns data transformation
# four important - that effect the colums
# rename(), mutate(), relocate(), select()

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1
  )

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 2
  )

# using .after

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .after = 1
  )

#using .keep argument
# gain and speed will not be stored in a new dataframe, but the columns will be added temporarily.
flights |> 
  mutate(
  gain = dep_delay - arr_delay,
  speed = distance / air_time * 60,
.keep ="used" 
)

# using select(), select columns by columnname
flights |>
  select(year, month, day)

#selecet columns between yer and day
flights |>
  select(year:day)

#select all columns except year to day
flights |>
  select(!year:day)

#select all columns that are characters
#flights |>
#  select (where(is.character(origin)))

flights %>%
  select(where(is.character))

library(dplyr)
selected_columns <- flights %>%
  select(starts_with("IAH"))

#you can also rename the column name using rename() function
flights |>
  select(tail_num =  tailnum)