library(openxlsx)
library(dplyr)

##################################### CT ###################################3
CT_Combined <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Code/Final Excels/CT_Combined.xlsx")

collapsed_data <- CT_Combined %>%
  group_by(State, County, Year) %>%  # Group by state, county, and year
  summarise(
    income = mean(Percapita_Personal_Income, na.rm = TRUE),  
    OADR = mean(OADR, na.rm = TRUE),  
    POC = mean(Percent_POC, na.rm = TRUE), 
    White = mean(Percent_White),
    popden = mean(Pop_Density, na.rm = TRUE),  
    CCR = mean(CCR, na.rm = TRUE),  
    population = mean(Population, na.rm = TRUE),
    emp_adj = mean(emp_adj),
    emp_rate_adj = mean(emp_rate_adj),  
    unemp_rate_adj = mean(unemp_rate_adj),  
    unemp_adj = mean(unemp_adj),  
    LFPR = mean(LFPR),
    LF = mean(LF),
    Population_16to64 = mean(Population_16to64),
    within_25mi = mean(within_25mi),
    within_50mi = mean(within_50mi),
    within_100mi = mean(within_100mi)
  ) %>%
  group_by(State, County, Year) %>%  # Group by state and county
  summarise(
    income = mean(income),  
    OADR = mean(OADR),  
    POC = mean(POC), 
    White = mean(White),
    popden = mean(popden),  
    CCR = mean(CCR), 
    population = mean(population),
    emp_adj = mean(emp_adj),
    emp_rate_adj = mean(emp_rate_adj),  
    unemp_rate_adj = mean(unemp_rate_adj),  
    unemp_adj = mean(unemp_adj),  
    LFPR = mean(LFPR),
    LF = mean(LF),
    Population_16to64 = mean(Population_16to64),
    within_25mi = mean(within_25mi),
    within_50mi = mean(within_50mi),
    within_100mi = mean(within_100mi)
  ) %>%
  ungroup()

write.xlsx(collapsed_data , file = "Documents/Master's Thesis/CT_Combined_Yearly.xlsx")


##################################### TX #######################################

TX_Total <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Code/Final Excels/TX_Total.xlsx")


collapsed_data <- TX_Total %>%
  group_by(State, County, Year) %>%  # Group by state, county, and year
  summarise(
    income = mean(Percapita_Personal_Income, na.rm = TRUE),  
    OADR = mean(OADR, na.rm = TRUE),  
    POC = mean(Percent_POC, na.rm = TRUE), 
    White = mean(Percent_White),
    popden = mean(Pop_Density, na.rm = TRUE),  
    CCR = mean(CCR, na.rm = TRUE),  
    population = mean(Population, na.rm = TRUE),
    emp_adj = mean(emp_adj),
    emp_rate_adj = mean(emp_rate_adj),  
    unemp_rate_adj = mean(unemp_rate_adj),  
    unemp_adj = mean(unemp_adj),  
    LFPR = mean(LFPR),
    LF = mean(LF),
    Population_16to64 = mean(Population_16to64),
    within_25mi = mean(within_25mi),
    within_50mi = mean(within_50mi),
    within_100mi = mean(within_100mi)
  ) %>%
  group_by(State, County, Year) %>%  # Group by state and county
  summarise(
    income = mean(income),  
    OADR = mean(OADR),  
    POC = mean(POC), 
    White = mean(White),
    popden = mean(popden),  
    CCR = mean(CCR), 
    population = mean(population),
    emp_adj = mean(emp_adj),
    emp_rate_adj = mean(emp_rate_adj),  
    unemp_rate_adj = mean(unemp_rate_adj),  
    unemp_adj = mean(unemp_adj),  
    LFPR = mean(LFPR),
    LF = mean(LF),
    Population_16to64 = mean(Population_16to64),
    within_25mi = mean(within_25mi),
    within_50mi = mean(within_50mi),
    within_100mi = mean(within_100mi)
  ) %>%
  ungroup()

write.xlsx(collapsed_data , file = "Documents/Master's Thesis/TX_Total_Yearly.xlsx")

