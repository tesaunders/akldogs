library(readxl)
library(janitor)
library(dplyr)
library(stringr)

file_path <- list.files(path = "data-raw", 
                        pattern = ".*impound.*\\.xlsx$|.*impound.*\\.xls$", 
                        ignore.case = TRUE,
                        full.names = TRUE)

impounds <- read_excel(path = file_path) |> 
  clean_names() |> 
  mutate(
    across(
      c(suburb, primary_breed, secondary_breed),
      str_to_title
    ),
    suburb = str_replace_all(suburb, "Mt ", "Mount ")
  )

write.csv(impounds, "data-raw/impounds.csv", row.names = FALSE)

usethis::use_data(impounds, overwrite = TRUE)