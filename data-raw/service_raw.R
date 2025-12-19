library(readxl)
library(dplyr)
library(stringr)

service_raw <- read_excel("data-raw/service_raw.xlsx")

write.csv(service_raw, "data-raw/service_raw.csv", row.names = FALSE)

service_raw <-
  service_raw |> 
  rename(rfs_id = "RFS No",
         rfs_date = "RFS Date",
         suburb = "Location Suburb Name",
         street = "Location Street Name",
         team = "Team",
         local_board = "Local Board",
         rfs_type = "RFS Type") |> 
  mutate(
    suburb = str_to_title(suburb)
  )

service_raw$rfs_date <- as.Date(service_raw$rfs_date)

usethis::use_data(service_raw, overwrite = TRUE)