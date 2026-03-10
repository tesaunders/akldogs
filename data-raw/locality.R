library(dplyr)
library(stringr)

load("data/impounds.rda")
load("data/registration.rda")
load("data/rfs.rda")

suburbs_intersection <- sort(intersect(intersect(rfs$location_suburb_name, registration$suburb_name), impounds$suburb))
suburbs_unique <- unique(c(rfs$location_suburb_name, registration$suburb_name, impounds$suburb))
suburbs_missing <- sort(setdiff(suburbs_unique, suburbs_intersection))

locality <-
  data.frame(suburb = suburbs_intersection) |> 
  bind_rows(data.frame(suburb = suburbs_missing)) |>
  left_join(rfs |> select(location_suburb_name, local_board) |> unique(), by = join_by(suburb == location_suburb_name)) |> 
  mutate(
    local_board = case_when(str_detect(suburb, "Vivian Bay|Opahi Bay|Ti Point|Kaipara Hills|Omaha Flats|Tramcar Bay|Campbells Beach|Bon Accord|Waimamauku") ~ "Rodney Local Board",
                            str_detect(suburb, "Rainbows End|Mauku|Ramarama|Te Hihi|Kingseat|Manukau Heads|Ararimu|Hunua|Paerata|Awhitu|Pollok|Runciman") ~ "Franklin Local Board",
                            str_detect(suburb, "Outlying Islands|Rakino Island|Ostend") ~ "Waiheke Local Board",
                            str_detect(suburb, "Wiri|Totara Park|Manurewa East") ~ "Manurewa Local Board",
                            str_detect(suburb, "Opaheke|Red Hill|Pahurehure|Takatu|Rosehill") ~ "Papakura Local Board",
                            str_detect(suburb, "Coal Mine Bay|East Coast Bays|Gulf Harbour|Wairau|Millwater") ~ "Hibiscus and Bays Local Board",
                            str_detect(suburb, "Dannemora|Somerville|North Park|Huntington Park|Golflands|Highbrook") ~ "Howick Local Board",
                            str_detect(suburb, "Tuakau|Kamo|Coromandel|Thames|Hampton Downs|Meremere|Makaurau") ~ NA,
                            suburb == "St Marys Bay" ~ "Waitematā Local Board",
                            suburb == "Wesley" ~ "Puketāpapa Local Board",
                            suburb == "Hikurangi" ~ "Henderson-Massey Local Board",
                            local_board == "Aotea / Great Barrier Local Board" ~ "Aotea/Great Barrier Local Board",
                            .default = local_board),
    local_board = paste0(local_board, " Area"),
    region = case_when(
      str_detect(local_board, "Manurewa|Ōtara|Māngere|Papakura|Franklin") ~ "south",
      str_detect(local_board, "Puketāpapa|Maungakiekie-Tāmaki|Albert-Eden|Waitematā|Ōrākei ") ~ "central",
      str_detect(local_board, "Henderson-Massey|Whau|Waitākere") ~ "west",
      str_detect(local_board, "Howick") ~ "east",
      str_detect(local_board, "Devonport-Takapuna|Hibiscus|Kaipātiki|Rodney|Upper Harbour|") ~ "north",
      is.na(local_board) ~ NA)
  )

usethis::use_data(locality, overwrite = TRUE)