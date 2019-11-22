#this is the R script git intro

name <- c("alfie")
home_town <- c("london")
scared_of <= c("bugs")

df <- data.frame(name, home_town, scared_of)

#geocoding data

df <- df[, c("name","home_town","scared_of")]

dfGeo <- tmaptools::geocode_OSM(as.vector(df$home_town), as.data.frame = TRUE)
df <- merge(df, dfGeo, by.x="home_town", by.y="query")

print(df)

