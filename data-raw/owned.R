library(dplyr)

owned = readr::read_csv("owned.csv", col_names = "id") %>%
  unique() %>%
  arrange(id)

devtools::use_data(owned, overwrite = TRUE)
