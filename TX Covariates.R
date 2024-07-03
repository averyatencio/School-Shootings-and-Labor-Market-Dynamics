library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

#TX

Texas_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/TX/Texas_Covariates.xlsx")

county_to_keep <- c("Austin County, TX", "Brazoria County, TX", "Chambers County, TX", "Colorado County, TX", "Fort Bend County, TX", "Galveston County, TX", "Grimes County, TX", "Hardin County, TX", "Harris County, TX", "Jefferson County, TX", "Liberty County, TX", "Matagorda County, TX", "Montgomery County, TX", "Orange County, TX", "Polk County, TX", "San Jacinto County, TX", "Tyler County, TX", "Walker County, TX", "Waller County, TX", "Wharton County, TX") 

data_filtered <- Texas_Covariates %>%
  filter(County %in% county_to_keep)

write.xlsx(data_filtered, file = "Documents/Master's Thesis/Labor Data/TX/TX_Cov(2021-2022).xlsx")

TX_Cov_2013_2020_ <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Cov(2013-2020).xlsx")
TX_Cov_2021_2022_ <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Cov(2021-2022).xlsx")

#combine
combined_data <- rbind(TX_Cov_2013_2020_, TX_Cov_2021_2022_)

combined_data2 <- combined_data %>%
  arrange(County, as.integer(Year))

write.xlsx(combined_data2, file = "Documents/Master's Thesis/Labor Data/TX/TX_Covariates_Final.xlsx")

#TX Employment

TX_Employment_Stats <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX Employment Stats.xlsx")

data_arranged <- TX_Employment_Stats%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/TX/TX_Employment(edited).xlsx")



