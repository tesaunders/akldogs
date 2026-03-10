library(readxl)
library(janitor)
library(dplyr)
library(stringr)


impounds <- read_excel(path = "data-raw/All Dog Impounds - 1.7.21-30.6.24.xlsx") |> 
  clean_names() |> 
  mutate(
    across(
      c(suburb, primary_breed, secondary_breed),
      str_to_title
    )
  )

usethis::use_data(impounds, overwrite = TRUE)