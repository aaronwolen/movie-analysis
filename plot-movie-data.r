library(methods)
library(ggplot2)

# Load data
movies <- read.csv("movie-data.csv")


# Generate and explort scatterplot
s.plot <- qplot(budet, rating, data = movies)

ggsave(filename = "movie-scatterplot.png", plot = s.plot, width = 4, height = 4)