# config.R

# Function to find OneDrive path dynamically
find_onedrive_path <- function() {
  # Define potential OneDrive paths for both Windows and macOS
  potential_paths <- c(
    "C:/Users/minkv/OneDrive - Universiteit Utrecht/Projects/2025_Verschoor_Limited impact of lower shield installation"
    # Add macOS paths here if necessary, e.g.
    # "/Users/yourusername/OneDrive - Universiteit Utrecht/Projects/2025_Verschoor_Limited impact of lower shield installation"
  )
  
  # Check which path exists and return it
  for (path in potential_paths) {
    if (dir.exists(path)) {
      return(path)
    }
  }
  
  stop("OneDrive path not found. Please set it manually.")
}

# Set the data_path in the global environment
data_path <<- find_onedrive_path()

# Generalized function to load data from any sub folder of `data_path`
load_data <- function(file_name) {
  # Search for the file recursively under the base data_path
  file_path <- list.files(data_path, pattern = file_name, full.names = TRUE, recursive = TRUE)
  
  # Check if the file exists
  if (length(file_path) == 0) {
    stop(paste("File not found:", file_name))
  }
  
  # Load the CSV file using fread from data.table
  return(data.table::fread(file_path[1], header = TRUE))  # Return the first match
}

