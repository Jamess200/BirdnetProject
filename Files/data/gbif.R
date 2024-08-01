data <- read.table("0044318-240626123714530.csv",
                   sep="\t", header =T)
names(data)
length(table(data$species))
