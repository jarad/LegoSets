library(dplyr)

owned = readr::read_csv("owned.csv") %>%
  unique() %>%
  arrange(id)

devtools::use_data(owned, overwrite = TRUE)
