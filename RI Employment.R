library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

#RI Employment Data

RI_Employment_Stats <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI Employment Stats.xlsx", 
                                  sheet = "Washington County")

RI_Employment_Stats <- RI_Employment_Stats[RI_Employment_Stats$Year <= 2017, ]
RI_Employment_Stats <- RI_Employment_Stats[RI_Employment_Stats$Year >= 2007, ]

RI_Employment_Stats <- RI_Employment_Stats[RI_Employment_Stats$Month != "Annual Average", ]

month_mapping <- c(January = 1, February = 2, March = 3, April = 4, May = 5, June = 6, 
                   July = 7, August = 8, September = 9, October = 10, November = 11, December = 12)

#Replace month with numeric values 
RI_Employment_Num <- RI_Employment_Stats
RI_Employment_Num$Month <- month_mapping[RI_Employment_Stats$Month]

RI_Employment<- RI_Employment_Num%>%
  arrange(Year, Month)

write.xlsx(RI_Employment, file = "Documents/Master's Thesis/Labor Data/RI/RI_Employment(edited).xlsx")


