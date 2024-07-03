library(readxl)
library(tidyr)
library(dplyr)
library(openxlsx)

##################################### CT ######################################


Housing_CT <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Data/CT/Annual Housing Permit Data CT.xlsx")

#Adding the same counties together
df_sum <- Housing_CT %>%
  group_by(County) %>%
  summarize(across(.cols = everything(), sum, na.rm = TRUE))

#Pivoting Data

df_pivoted <- df_sum %>%
  pivot_longer(cols = -County, names_to = "Year", values_to = "Housing_Permits")

write.xlsx(df_pivoted, file = "Documents/Master's Thesis/Labor Term Paper/Labor Data/Housing Permits CT.xlsx")


##################################### TX #####################################
TX <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Code/Final Excels/TX_Total_Yearly.xlsx")

unique(TX$County)

Housing_Permits_TX <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Data/Housing Permits TX.xlsx")

counties_of_interest <- c("Austin", "Brazoria", "Chambers",
                          "Colorado", "Fort Bend", "Galveston",
                          "Grimes", "Hardin", "Harris",
                          "Jefferson", "Liberty", "Matagorda",
                          "Montgomery", "Orange", "Polk",
                          "San Jacinto", "Tyler", "Walker",
                          "Waller", "Wharton")
df_filtered <- Housing_Permits_TX %>%
  filter(area %in% counties_of_interest)

df_filtered <- df_filtered %>%
  filter(as.integer(year) >= 2013)

write.xlsx(df_filtered, file = "Documents/Master's Thesis/Labor Term Paper/Labor Data/Housing_Permits_TX.xlsx")



