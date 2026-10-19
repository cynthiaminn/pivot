## code to prepare `maternal_mortality` dataset goes here

maternal_mortality <- read.csv("C:/Users/cindy/OneDrive/maternal_mortality.csv")

# Save the dataset into the R package
usethis::use_data(maternal_mortality, overwrite = TRUE)
