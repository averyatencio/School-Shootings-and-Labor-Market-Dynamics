library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

NJ_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Covariates.xlsx")

#Dropping counties I don't need

counties_to_drop <- c("Atlantic County, NJ", "Burlington County, NJ", "Camden County, NJ", "Cape May County, NJ", "Cape May County, NJ", "Cumberland County, NJ", "Gloucester County, NJ", "Salem County, NJ")  

#Drop rows 
NJ_Covariates <- NJ_Covariates %>%
  filter(!County %in% counties_to_drop)

write.xlsx(NJ_Covariates, file = "NJ_Covariates_1.xlsx")

#Employment Stats

NJ_UPDATE <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_UPDATE.xlsx")

counties_to_drop <- c("Atlantic County", "Burlington County", "Camden County", "Cape May County", "Cape May County", "Cumberland County", "Gloucester County", "Salem County")  


NJ_UPDATE <- NJ_UPDATE %>%
  filter(!County %in% counties_to_drop)

write.xlsx(NJ_UPDATE, file = "Documents/Master's Thesis/Labor Data/NJ/NJ_Employment.xlsx")

#combining the data

Covariates_Final <- read_excel("Documents/Master's Thesis/Labor Data/Covariates_Final.xlsx", 
                               sheet = "NJ")

NJ_Employment <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Employment.xlsx")

#Month mapping
month_mapping <- c(JAN = 1, FEB = 2, MAR = 3, APR = 4, MAY = 5, JUN = 6, 
                   JUL = 7, AUG = 8, SEP = 9, OCT = 10, NOV = 11, DEC = 12)

#Replace month with numeric values 
NJ_Employment_Num <- NJ_Employment
NJ_Employment_Num$Month <- month_mapping[NJ_Employment$Month]



combined_data <- merge(Covariates_Final, NJ_Employment_Num , by = c("County", "Year", "Month"), all = TRUE)

combined_data2 <- combined_data %>%
  arrange(County,Year, Month)

combined_data2 <- combined_data2[combined_data2$Year <= 2017, ]

write.xlsx(combined_data2, file = "Documents/Master's Thesis/Labor Data/NJ/NJ_Total.xlsx")




