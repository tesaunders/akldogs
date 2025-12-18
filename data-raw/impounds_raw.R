library(readxl)
library(dplyr)
library(stringr)

impounds_raw <- read_excel("data-raw/impounds_raw.xlsx")

write.csv(impounds_raw, "data-raw/impounds_raw.csv", row.names = FALSE)

impounds_raw <-
  impounds_raw |> 
  rename(docket_id = "Docket #",
         shelter = "Shelter",
         team = "Team",
         impound_date = "Impound Date",
         impound_reason = "Impound Reason",
         exit_date = "Exit Date",
         status = "Status",
         rfs_id = "RFS #",
         street = "Street Name",
         suburb = "Suburb",
         s57_type = "S.57 Type",
         severity = "Severity",
         breed_1 = "Primary Breed",
         breed_2 = "Secondary Breed",
         sex = "Sex",
         desexed = "Desexed",
         age_appx = "Approx Age",
         name = "Dog Name",
         dog_id = "Dog ID",
         classified = "Classified",
         classification_current = "Current Classification",
         classification_req = "Classification Required",
         classification_new = "New Classification",
         classification_issued = "New Classification Issued",
         registered = "Registered",
         reg_issued = "New Reg Issued",
         microchipped = "Microchipped",
         microchip_id = "Microchip #",
         microchip_issued = "New Microchip Issued",
         known = "Known Dog",
         euthanasia_reason = "Euthanasia Reason",
         days_in_shelter = "Days in Shelter") |> 
  mutate(
    across(
      c(suburb, breed_1, breed_2),
      str_to_title
    )
  )

impounds_raw <- type_convert(impounds_raw)

usethis::use_data(impounds_raw, overwrite = TRUE)