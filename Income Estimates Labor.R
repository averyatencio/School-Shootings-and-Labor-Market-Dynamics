library(readxl)
library(dplyr)
library(tidyr)
library(openxlsx)

######################################### NJ ###################################

NJ_Income <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Income.xlsx")

NJ_Income <- NJ_Income %>%
  pivot_longer(cols = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"), 
               names_to = "Year", 
               values_to = "percapita_personal_income")

#################################### NY ########################################

NY_Income <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_Income.xlsx")

NY_Income <- NY_Income %>%
  pivot_longer(cols = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"), 
               names_to = "Year", 
               values_to = "Percapita_Personal_Income")

write.xlsx(NY_Income, file = "NY_Income(edited).xlsx")


################################## MA ##########################################

MA_Income <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA_Income.xlsx")

MA_Income <- MA_Income %>%
  pivot_longer(cols = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"), 
               names_to = "Year", 
               values_to = "Percapita_Personal_Income")

write.xlsx(MA_Income, file = "Documents/Master's Thesis/Labor Data/MA/MA_Income(edited).xlsx")

#################################### PA ########################################

PA_Income <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Income.xlsx")

PA_Income <- PA_Income %>%
  pivot_longer(cols = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"), 
               names_to = "Year", 
               values_to = "Percapita_Personal_Income")

write.xlsx(PA_Income, file = "Documents/Master's Thesis/Labor Data/PA/PA_Income(edited).xlsx")

##################################### RI ########################################

RI_Income <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_Income.xlsx")

RI_Income <- RI_Income %>%
  pivot_longer(cols = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"), 
               names_to = "Year", 
               values_to = "Percapita_Personal_Income")

write.xlsx(RI_Income, file = "Documents/Master's Thesis/Labor Data/RI/RI_Income(edited).xlsx")

##################################### TX #######################################

TX_Income <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Income.xlsx")

TX_Income <- TX_Income %>%
  pivot_longer(cols = c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022"), 
               names_to = "Year", 
               values_to = "Percapita_Personal_Income")

write.xlsx(TX_Income, file = "Documents/Master's Thesis/Labor Data/TX/TX_Income(edited).xlsx")