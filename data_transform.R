
# Load the "iris" dataset
data(iris)

# Function to calculate mean sepal length for a specific species
calculate_mean_sepal_length <- function(species) {
  subset_data <- iris[iris$Species == species, ]
  return(mean(subset_data$Sepal.Length))
}
