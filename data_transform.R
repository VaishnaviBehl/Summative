
# Load the "iris" dataset
data(iris)

# Function to calculate mean sepal length for a specific species
calculate_mean_sepal_length <- function(species) {
  subset_data <- iris[iris$Species == species, ]
  return(mean(subset_data$Sepal.Length))
}

# Updated function to calculate mean sepal length for a specific species and number of observations

calculate_mean_sepal_length <- function(species, n = NULL) {
  subset_data <- subset(iris, Species == species)
  
  if (!is.null(n)) {
    subset_data <- subset_data[1:min(n, nrow(subset_data)), ]
  }
  
  return(mean(subset_data$Sepal.Length))
}
