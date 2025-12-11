library(readr)

owners <- read_csv("data-raw/owners.csv")

usethis::use_data(owners, overwrite = TRUE)