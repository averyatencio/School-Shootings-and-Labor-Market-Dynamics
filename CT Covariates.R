library(readxl)
library(dplyr)
library(tidyr)
library(openxlsx)

CT_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_Covariates.xlsx")

CT_Covariates <- CT_Covariates[CT_Covariates$Year >= 2007, ]

write.xlsx(CT_Covariates, file = "CT_Covariates(edited).xlsx")
