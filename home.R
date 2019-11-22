#this is the R script git intro
library("tmaptools")
library("jsonlite")
setwd("C:\\Users\\Alfie\\Documents\\my_gits\\casa_git_intro\\happybdmarkus")

name <- c("alfie")
home_town <- c("london")
scared_of <- c("bugs")

df <- data.frame(name, home_town, scared_of)

#geocoding data

df <- df[, c("name","home_town","scared_of")]

dfGeo <- tmaptools::geocode_OSM(as.vector(df$home_town), as.data.frame = TRUE)
df <- merge(df, dfGeo, by.x="home_town", by.y="query")

print(df)

df <- df[,c("lat","lon","name","home_town","scared_of")]
write.table(df,"location.csv", col.names=FALSE,row.names=FALSE,sep=",")

#this is the one