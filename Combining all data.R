library(readxl)
library(dplyr)
library(openxlsx)


#Combining all counties 
CT_Total <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_Total.xlsx")
NJ_Total <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Total.xlsx")
NY_Total <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_Total.xlsx")
MA_Total <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA_Total.xlsx")
PA_Total <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Total.xlsx")
RI_Total <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_Total.xlsx")

datasets <- list(CT_Total, NJ_Total, NY_Total, MA_Total, PA_Total, RI_Total)

combined_data <- do.call(rbind, datasets)

write.xlsx(combined_data, file = "Documents/Master's Thesis/Labor Data/CT_Combined .xlsx")
