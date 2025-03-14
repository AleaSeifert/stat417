library(tidyverse)

mini_times <- read.csv("data/mini_times.csv") |>
  select(-Collector) |>
  rename(id = ID,
         time = Time..sec.,
         censor = Censor,
         gender = Gender,
         reaction_time = Reaction.Time..ms.,
         squares = Squares,
         day = Day) |>
  mutate(puzzle = factor(case_when(day == "Tuesday" ~ 1,
                                day == "Wednesday" ~ 2,
                                day == "Thursday" ~ 3,
                                day == "Friday" ~ 4,
                                day == "Saturday" ~ 5,
                                day == "Friday2" ~ 6)),
         day = if_else(day == "Friday2", "Friday", day))

