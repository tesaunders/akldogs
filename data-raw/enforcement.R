library(readr)

enforcement <- read_csv("data-raw/enforcement.csv")

usethis::use_data(enforcement, overwrite = TRUE)