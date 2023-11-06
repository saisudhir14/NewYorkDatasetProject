install.packages("nycflights13")
library(nycflights13)

#you can also rename the column name using rename() function
flights <- flights |>
  select(tail_num =  tailnum)

flights

View(flights)
#
rm(flights)

#

flights |>
  rename(tail_num = tailnum)

?janitor::clean_names(dep_dealay)

install.packages("janitor")
library(janitor)

#removes spaces, special symbols, replaces spaces with underscores
flights %>%
  janitor::clean_names()


#relocate - to move variables around. we can collect related varibales together or move important variables to the front
#by default relocate() moves to the front

flights |>
  relocate(time_hour, air_time)

# we can also use again .before and .after arguments just like mutate()
