get_file_from_url <- function(url, local_dir) {
  if (!dir.exists(dirname(local_file))) {
    dir.create(dirname(local_file))
  }
  download.file(url, destfile = local_file)
}

# Backcountry use area (table, incomplete)
# From:  https://grandcanyonbackcountryguide.com/backcountry_use_areas.html
url <- "https://grandcanyonbackcountryguide.com/Backcountry_Use_Areas.xls"
local_file <- here::here("data", basename(url))

get_file_from_url(url, local_file)

Backcountry_Use_Areas <- readxl::read_excel(local_file)

Backcountry_Use_Areas %>% View

# local_rds <- here::here("data-cleaned", filename.rds in quotes)
# saveRDS(variable_name, file = local_rds)
# #  readRDS(file = local_rds)


# file.remove(local_file)







# 
# rideshare <-
#   read_tsf(paste0(dirname(local_file), "/", "rideshare_dataset_with_missing_values.tsf"),
#            key = "series_name") %>%
#   pluck(1) %>%
#   as_tibble() %>%
#   select(-series_name) %>%
#   rename(timestamp = start_timestamp) %>%
#   pivot_wider(names_from = type, values_from = series_value)
# 
# local_rds <- here::here("data-raw", "rideshare", "rideshare.rds")
# saveRDS(rideshare, file = local_rds)
# #  readRDS(file = local_rds)
