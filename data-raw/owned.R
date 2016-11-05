library(dplyr)

# owned.csv is cut-and-pasted from
# http://brickset.com/sets/mycollection-owned

owned = readr::read_csv("owned.csv") %>%
  unique() %>%
  arrange(SetID)

devtools::use_data(owned, overwrite = TRUE)
