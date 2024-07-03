library(readxl)
library(dplyr)
library(tidyr)
library(openxlsx)
####################################### CT ######################################

CT_Race <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_Race.xlsx")

CT_Race <- CT_Race[!grepl("American Indian or Alaska Native", CT_Race$Race), ]

CT_Race <- CT_Race[!grepl("Asian or Pacific Islander", CT_Race$Race), ]

CT_Race <- CT_Race[!grepl("Black or African American", CT_Race$Race), ]

write.xlsx(CT_Race, file = "CT_Race(edited)1.xlsx")

################################# NJ ###########################################

NJ_Race <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Race.xlsx")

NJ_Race <- NJ_Race[!grepl("Total", NJ_Race$Notes), ]

write.xlsx(NJ_Race, file = "NJ_Race_Final.xlsx")

################################### NY ##########################################

NY_Race <- read_excel("Documents/Master's Thesis/Labor Data/NY/Beginning Sets/NY_Race.xlsx")

NY_Race <- NY_Race[!grepl("Total", NY_Race$Notes), ]

write.xlsx(NY_Race, file = "Documents/Master's Thesis/Labor Data/NY/NY_Race_Final.xlsx")

#################################### PA ########################################

PA_Race <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Race.xlsx")

county_to_keep <- "Pike County, PA"  
#Drop rows
PA_Race <- PA_Race %>%
  filter(County == county_to_keep)

write.xlsx(PA_Race, file = "Documents/Master's Thesis/Labor Data/PA/PA_Race_Final.xlsx")





