library(readr)

dogs <- read_csv("data-raw/dogs.csv")

usethis::use_data(dogs, overwrite = TRUE)