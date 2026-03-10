library(readxl)
library(janitor)
library(dplyr)
library(purrr)
library(stringr)

file_path <- list.files(path = "data-raw", 
                        pattern = ".*rfs.*\\.xlsx$|.*rfs.*\\.xls$", 
                        ignore.case = TRUE,
                        full.names = TRUE)

rfs <- 
  file_path |> 
  excel_sheets() |> 
  set_names() |> 
  map(function(sheet) {
    read_excel(file_path, sheet = sheet) |>
      clean_names() 
  }) |> 
  list_rbind(names_to = "sheet_name") |> 
  type.convert(as.is = TRUE)

rfs$rfs_date <- as.Date(rfs$rfs_date)

rfs <-
  rfs |> 
  mutate(
    location_suburb_name = str_to_title(location_suburb_name),
    rfs_type = str_to_sentence(rfs_type),
    rfs_type = rfs_type |> replace_values(
      c("Aggressive dog behaviour to animals (exc", 
        "Aggressive dog behaviour to stock", 
        "Aggressive dog behaviour to stock (incl.") ~ "Aggressive dog behaviour to animals",
      "Dog attack on animals (excl. stock)" ~ "Dog attack on animals",
      "Welfare - general" ~ "Welfare")
  ) 
  
usethis::use_data(rfs, overwrite = TRUE)