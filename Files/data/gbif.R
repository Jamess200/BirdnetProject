library(openxlsx)

data <- read.table("0044318-240626123714530.csv",
                   sep="\t", header =T)
names(data)
head(data)
length(table(data$scientificName))
human <- read.xlsx("HAU_transects_2024.xlsx")

species
scientificName

spp

merge(x = human, y = data[,c("species")],
      by.x = "spp", by.y = "species")