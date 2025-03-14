library(tidyverse)

mini_times <- read.csv("data/mini_times.csv") |>
  select(-Collector) |>
  rename(id = ID,
         time = Time..sec.,
         censor = Censor,
         gender = Gender,
         reaction_time = Reaction.Time..ms.,
         squares = Squares,
         day = Day)

