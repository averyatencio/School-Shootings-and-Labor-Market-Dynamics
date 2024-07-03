library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

#MA

MA_Employment_Stats <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA Employment Stats.xlsx")

MA_Employment_Stats <- MA_Employment_Stats [!grepl("Annual", MA_Employment_Stats$Month), ]

write.xlsx(MA_Employment_Stats, file = "Documents/Master's Thesis/Labor Data/MA/MA Employment Stats(edited).xlsx")
