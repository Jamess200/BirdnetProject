# Install and load necessary packages
install.packages("httr")
install.packages("jsonlite")
install.packages("dplyr")
install.packages("readr")
install.packages("lubridate")

library(httr)
library(jsonlite)
library(dplyr)
library(readr)
library(lubridate)

# Explain the conversion of degrees to kilometers
# 1 degree of latitude is approximately equal to 110.574 km
# 1 degree of longitude varies based on the latitude and is approximately 111.320 * cos(latitude in radians) km

# Define the bounding box coordinates (30 km x 30 km area around Harper Adams University)
center_latitude <- 52.7784
center_longitude <- -2.4267
half_side_km <- 15  # Half of 30 km

# Convert kilometers to degrees
delta_latitude <- half_side_km / 110.574  # 1 degree latitude ~ 110.574 km
delta_longitude <- half_side_km / (111.320 * cos(center_latitude * pi / 180))  # 1 degree longitude ~ 111.320 * cos(latitude) km

min_latitude <- center_latitude - delta_latitude
max_latitude <- center_latitude + delta_latitude
min_longitude <- center_longitude - delta_longitude
max_longitude <- center_longitude + delta_longitude

# Define the date range (10 years from today)
end_date <- Sys.Date()
start_date <- end_date - years(10)

# Print debug information
print(paste("Bounding Box:", min_latitude, max_latitude, min_longitude, max_longitude))
print(paste("Date Range:", start_date, "to", end_date))

# Construct the API query URL
base_url <- "https://api.gbif.org/v1/occurrence/search"
query_params <- list(
  taxonKey = 212,  # TaxonKey for birds (Aves)
  decimalLatitude = paste(min_latitude, max_latitude, sep = ","),
  decimalLongitude = paste(min_longitude, max_longitude, sep = ","),
  eventDate = paste0(start_date, ",", end_date),
  limit = 300
)

# Function to retrieve bird data with pagination
retrieve_bird_data <- function(base_url, query_params, max_results=30000) {
  all_results <- list()
  offset <- 0
  while (TRUE) {
    query_params$offset <- offset
    response <- GET(base_url, query = query_params)
    content <- content(response, "parsed", simplifyVector = TRUE)
    if (length(content$results) == 0) {
      break
    }
    all_results <- append(all_results, list(content$results))
    offset <- offset + query_params$limit
    print(paste("Retrieved", offset, "records so far..."))
    Sys.sleep(1)  # Pause to avoid hitting rate limits
    if (offset >= max_results) {
      break
    }
  }
  return(bind_rows(all_results))
}

# Get the total count of bird data
count_response <- GET(base_url, query = c(query_params, limit = 0))
total_count <- content(count_response, "parsed")$count
print(paste("Total records available:", total_count))

# Retrieve all bird data if count is greater than zero
if (total_count > 0) {
  print("Starting data retrieval...")
  df <- retrieve_bird_data(base_url, query_params, max_results=total_count)
  
  # Select relevant columns
  selected_columns <- c("scientificName", "decimalLatitude", "decimalLongitude", "eventDate", "datasetKey")
  df_selected <- df %>% select(all_of(selected_columns))
  
  # Save to a CSV file
  write_csv(df_selected, "birds_30kmx30km_10years.csv")
  
  # Print a message indicating completion
  print("Data has been saved to birds_30kmx30km_10years.csv")
} else {
  print("No records found for the specified query.")
}

