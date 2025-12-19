library(readxl)
library(dplyr)
library(stringr)

dogs_raw <- read_excel("data-raw/dogs_raw.xlsx", 
                       col_types = c("text", 
                                     rep.int("guess", 6), 
                                     "date", 
                                     rep.int("guess", 2),
                                     "text",
                                     rep.int("guess", 3)))

write.csv(dogs_raw, "data-raw/dogs_raw.csv", row.names = FALSE)

dogs_raw <-
  dogs_raw |> 
  rename(id = "Animal ID",
         owner_reg = "Owner Registration Class",
         name = "Animal Name",
         last_registered = "Registration Latest Year",
         breed_1 = "Animal Breed Description",
         breed_2 = "Animal Breed2 Description",
         sex = "Animal Gender Description",
         dob = "DOB",
         age_group = "Age Group",
         desexed = "Animal Desexed",
         classification = Classification,
         classification_owner = "Owner Classification Desc",
         suburb = "Suburb Name",
         area = "Address Area") |> 
  mutate(
    desexed = case_match(desexed, "X" ~ "YES", .default = desexed),
    suburb = str_to_title(suburb)
  )

usethis::use_data(dogs_raw, overwrite = TRUE)