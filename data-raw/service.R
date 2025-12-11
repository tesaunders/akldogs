library(readr)

service <- read_csv("data-raw/service.csv")

usethis::use_data(service, overwrite = TRUE)