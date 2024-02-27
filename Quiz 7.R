set.seed(123) # For reproducibility

# Number of buildings
n_buildings <- 1000

# Simulating the number of floors
# Assuming a range of 1 to 60 floors with some skew towards lower numbers
num_floors <- round(runif(n_buildings, 1, 60) ^ 0.75)

# Simulating the year of construction (between 1900 and 2020)
year_of_construction <- sample(1900:2020, n_buildings, replace = TRUE)

# Simulating locations (1 = Central, 0 = Peripheral)
location <- ifelse(runif(n_buildings) < 0.5, 'Central', 'Peripheral')

# Simulating usage
usage <- sample(c('Residential', 'Commercial', 'Mixed'), n_buildings, replace = TRUE, prob = c(0.4, 0.3, 0.3))

# Simulating age categories based on year of construction
age_category <- cut(year_of_construction, breaks = c(1900, 1960, 1990, 2020), labels = c('Old', 'Mid-age', 'New'), include.lowest = TRUE)

# Creating a dataframe
buildings_df <- data.frame(
  num_floors,
  year_of_construction,
  location,
  usage,
  age_category
)

head(buildings_df)

