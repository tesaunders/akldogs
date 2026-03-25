library(dplyr)
library(stringr)
library(stringdist)
library(readr)

load("data/impounds.rda")
load("data/registration.rda")

# Extract unique breeds
raw_breeds_reg <- registration |> distinct(animal_breed_description) |> pull()
raw_breeds_imp <- impounds |> distinct(primary_breed) |> pull()

all_raw_breeds <- unique(c(raw_breeds_reg, raw_breeds_imp))

# Create lookup table, clean breed names
breed_lookup <- data.frame(raw_name = all_raw_breeds, stringsAsFactors = FALSE) |>
  mutate(clean_name = str_replace(raw_name, "^(.+),\\s+(.+)$", "\\2 \\1"),
         clean_name = str_squish(clean_name))

# Define registration as master list
master_list <- breed_lookup |>
  filter(raw_name %in% raw_breeds_reg) |>
  distinct(clean_name) |>
  pull(clean_name)

# Fuzzy match names that aren't already in the master list
to_fuzzy_match <- breed_lookup |>
  filter(!(clean_name %in% master_list))

if (nrow(to_fuzzy_match) > 0) {
  matches <- sapply(to_fuzzy_match$clean_name, function(x) {
    idx <- amatch(x, master_list, maxDist = 5)
    if(is.na(idx)) return(x) # Keep original clean name if no close match found
    return(master_list[idx])
  })
  
  # Update the lookup table with the fuzzy-corrected names
  fuzzy_results <- data.frame(
    clean_name = names(matches),
    standardised_name = unname(matches),
    stringsAsFactors = FALSE
  )
  
  breed_lookup <- breed_lookup |>
    left_join(fuzzy_results, by = "clean_name") |>
    mutate(standardised_name = coalesce(standardised_name, clean_name))
} else {
  breed_lookup$standardised_name <- breed_lookup$clean_name
}

# Manually export breed lookup table, tweak, and import corrected version

write_csv(breed_lookup, "data-raw/breed_lookup.csv")
breeds <- read_csv("data-raw/breed_lookup_corrected.csv")

usethis::use_data(breeds, overwrite = TRUE)