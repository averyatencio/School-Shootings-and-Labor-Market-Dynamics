library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

#NY

NY_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_Covariates.xlsx")

counties_to_drop <- c("Albany County, NY", "Allegany County, NY", "Broome County, NY", "Cattaraugus County, NY", "Cayuga County, NY", "Chautauqua County, NY", "Chemung County, NY", "Chenango County, NY", "Clinton County, NY", "Cortland County, NY", "Delaware County, NY", "Erie County, NY", "Essex County, NY", "Franklin County, NY", "Fulton County, NY", "Genesee County, NY", "Hamilton County, NY", "Herkimer County, NY", "Jefferson County, NY", "Lewis County, NY", "Livingston County, NY", "Madison County, NY", "Monroe County, NY", "Montgomery County, NY", "Niagara County, NY","Oneida County, NY", "Onondaga County, NY", "Ontario County, NY", "Orleans County, NY", "Oswego County, NY", "Otsego County, NY", "Rensselaer County, NY", "St. Lawrence County, NY", "Saratoga County, NY","Schenectady County, NY", "Schenectady County, NY", "Schuyler County, NY", "Seneca County, NY", "Steuben County, NY", "Tioga County, NY", "Tompkins County, NY", "Warren County, NY", "Washington County, NY", "Wayne County, NY", "Wyoming County, NY", "Yates County, NY")  

#Drop rows
NY_Covariates <- NY_Covariates %>%
  filter(!County %in% counties_to_drop)

write.xlsx(NY_Covariates, file = "Documents/Master's Thesis/Labor Data/NY/NY_Covariates1.xlsx")

#NY Employment

#Dropping years >2017 and <2007

NY_Employment <- read_excel("Documents/Master's Thesis/Labor Data/NY/New York Employment Stats.xlsx")

NY_Employment <- NY_Employment[NY_Employment$Year <= 2017, ]

NY_Employment <- NY_Employment[NY_Employment$Year >= 2007, ]

#Dropping rows with 0 in the months column

NY_Employment <- NY_Employment[NY_Employment$Month != "0", ]

#Dropping counties

counties_to_drop <- c("Albany County", "Allegany County", "Broome County", "Cattaraugus County", "Cayuga County", "Chautauqua County", "Chemung County", "Chenango County", "Clinton County", "Cortland County", "Delaware County", "Erie County", "Essex County", "Franklin County", "Fulton County", "Genesee County", "Hamilton County", "Herkimer County", "Jefferson County", "Lewis County", "Livingston County", "Madison County", "Monroe County", "Montgomery County", "Niagara County","Oneida County", "Onondaga County", "Ontario County", "Orleans County", "Oswego County", "Otsego County", "Rensselaer County", "St. Lawrence County", "Saratoga County","Schenectady County", "Schenectady County", "Schuyler County", "Seneca County", "Steuben County", "Tioga County", "Tompkins County", "Warren County", "Washington County", "Wayne County", "Wyoming County", "Yates County", "Schoharie County") 

#Drop rows 
NY_Employment <- NY_Employment %>%
  filter(!County %in% counties_to_drop)

#Arrange

NY_Employment <- NY_Employment%>%
  arrange(County, Year)

write.xlsx(NY_Employment, file = "Documents/Master's Thesis/Labor Data/NY/NY_Employment(edited).xlsx")

