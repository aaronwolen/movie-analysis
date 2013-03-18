# Movie title pattern (e.g, Star Wars: Episode V)
titles <- "Star Wars:"

# Load data
data(movies, package = "ggplot2")

# Apply filter and select relevant columns
hits <- grep(titles, movies$title)
movies.sub <- movies[hits, c("title", "year", "length", "budget", "rating")]

# Export
write.csv(movies.sub, "movie-data.csv", row.names = F)
