library(readxl)
library(janitor)
library(dplyr)
library(purrr)
library(stringr)

file_path <- list.files(path = "data-raw", 
                        pattern = ".*registration.*\\.xlsx$|.*registration.*\\.xls$", 
                        ignore.case = TRUE,
                        full.names = TRUE)

# Read each sheet in as text to avoid clashing types

registration <- 
  file_path |> 
  excel_sheets() |> 
  set_names() |> 
  map(function(sheet) {
    read_excel(file_path, sheet = sheet, col_types = "text") |>
      clean_names() |>
      rename(any_of(c(
        suburb_name               = "suburb",
        animal_breed_description  = "breed_1",
        animal_breed2_description = "breed_2",
        animal_id                 = "dog_id",
        animal_name               = "dog_name",
        animal_age                = "dog_age",
        registration_latest_year  = "last_registered",
        owner_classification_desc = "owner_classification",
        animal_registration_group = "dog_registration",
        owner_registration_class  = "owner_registration"
      )))
  }) |> 
  list_rbind(names_to = "sheet_name")

# Fix Excel dates

registration$dob <- as.Date(as.numeric(registration$dob), origin = "1899-12-30")

# Split gender_desexed and clean suburbs

registration <-
  registration |> 
  mutate(
    animal_gender_description = coalesce(animal_gender_description,
                                         str_extract(gender_desexed, "M|F")),
    animal_desexed = coalesce(animal_desexed,
                              str_extract(gender_desexed, "Desexed")),
    animal_desexed = case_when(animal_desexed %in% c("X", "Yes", "Desexed") ~ TRUE),
    age_group = coalesce(age_group,
                         animal_age),
    suburb_name = str_to_title(suburb_name)
  ) |> 
  select(-gender_desexed, -animal_age)

write.csv(registration, "data-raw/registration.csv", row.names = FALSE)

usethis::use_data(registration, overwrite = TRUE)