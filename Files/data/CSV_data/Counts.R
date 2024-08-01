library(lubridate)
library(chron)

data <- read.csv("transect_combined.csv")
# data$start_time <- chron(times. = data$start_time)
# data$end_time <- chron(times. = data$end_time)
data$start_time <- factor(data$start_time)
data <- data[,c(1:6,8)]

head(data)

table(data$transect)

table(data$start_hour)

sub <- data[which(data$date == "2024-05-02" & data$start_hour == 8), ]
sub$start_time <- droplevels(sub$start_time)

sub5 <- sub[which(sub$transect == 5),]
which(table(sub5$start_time)>1)


library(rgbif)
occ_download

# Harper lat lon 52.79090750803537, -2.428702586688384
#
# set up your credentials
# https://docs.ropensci.org/rgbif/articles/gbif_credentials.html
install.packages("usethis")
usethis::edit_r_environ()

# Edit your .Renviron to look like this:
GBIF_USER="jwaller"
GBIF_PWD="safe_fake_password_123"
GBIF_EMAIL="jwaller@gbif.org"

# Stone NE of harper
# 52.89873389884927, -2.1636575089559917

# shrewsbury SW of Harper
# 52.69779609649166, -2.6951209549789747

res <- occ_download(
  pred("taxonKey", 212),
  pred("country", "UK"),
  pred("hasCoordinate", TRUE),
  pred_gte("year", 2023),
  pred_lte("year", 2024),
  pred_gte("decimalLatitude", 52.69779609649166),
  pred_gte("decimalLongitude", -2.6951209549789747),
  pred_lte("decimalLatitude", 52.89873389884927),
  pred_lte("decimalLongitude", -2.1636575089559917)
  
)

res <- occ_download(
  pred("taxonKey", 212),
  pred("country", "UK"),
  pred("hasCoordinate", TRUE),
  pred("decimalLatitude", 52.79090750803537),
  pred("decimalLongitude", -2.428702586688384),
  pred_gte("year", 2023),
  pred_lte("year", 2024),
  pred_gte("year", 2023),
  pred_lte("year", 2024)
  
)
