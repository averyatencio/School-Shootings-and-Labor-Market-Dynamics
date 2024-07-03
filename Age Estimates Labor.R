library(readxl)
library(dplyr)
library(openxlsx)

####################################### NJ #################################### 
NJ_Age <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Age.xlsx")

unique_age_groups <- unique(NJ_Age$Age_Group)
print(unique_age_groups)

NJ_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_  
  )
}

NJ_population <- NJ_Age %>%
  mutate(Age_Category = NJ_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

NJ_OADR <- NJ_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(NJ_OADR, file = "NJ_OADR.xlsx")

##################################### NY #######################################

NY_Age <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_Age.xlsx")

unique_age_groups <- unique(NY_Age$Age_Group)
print(unique_age_groups)

NY_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_ 
  )
}

NY_population <- NY_Age %>%
  mutate(Age_Category = NY_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

NY_OADR <- NY_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(NY_OADR, file = "NY_OADR.xlsx")

#################################### MA #########################################

MA_Age <- read_excel("Documents/Master's Thesis/Labor Data/MA/Beginning Sets/MA_Age.xlsx")

unique_age_groups <- unique(MA_Age$Age_Group)
print(unique_age_groups)

MA_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_  
  )
}

MA_population <- MA_Age %>%
  mutate(Age_Category = MA_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

MA_OADR <- MA_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(MA_OADR, file = "Documents/Master's Thesis/Labor Data/MA/MA_OADR_Full.xlsx")

#################################### PA #########################################
PA_Age <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Age.xlsx")

county_to_keep <- "Pike County, PA"  

PA_Age <- PA_Age %>%
  filter(County == county_to_keep)

unique_age_groups <- unique(PA_Age$Age_Group)
print(unique_age_groups)

PA_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_  
  )
}

PA_population <- PA_Age %>%
  mutate(Age_Category = PA_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

PA_OADR <- PA_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(PA_OADR, file = "Documents/Master's Thesis/Labor Data/PA/PA_OADR_Full.xlsx")

#################################### RI ########################################

RI_Age <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_Age.xlsx")

county_to_keep <- "Washington County, RI"  

RI_Age <- RI_Age %>%
  filter(County == county_to_keep)

unique_age_groups <- unique(RI_Age$Age_Group)
print(unique_age_groups)

RI_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_  
  )
}

RI_population <- RI_Age %>%
  mutate(Age_Category = RI_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

RI_OADR <- RI_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(RI_OADR, file = "Documents/Master's Thesis/Labor Data/RI/RI_OADR_Full.xlsx")

################################### TX #########################################

TX_Age <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Age(2021-2022).xlsx")

unique_age_groups <- unique(TX_Age$Age_Group)
print(unique_age_groups)

TX_age_group_mapping <- function(Age_Group) {
  case_when(
    Age_Group %in% c("65-69 years", "70-74 years", "75-79 years", "80-84 years", "85+ years") ~ "65-plus",
    Age_Group %in% c("16-19 years", "20-24 years", "25-29 years", "30-34 years", "35-39 years", "40-44 years", "45-49 years", "50-54 years", "55-59 years", "60-64 years") ~ "16-64",
    TRUE ~ NA_character_  
  )
}

TX_population <- TX_Age %>%
  mutate(Age_Category = TX_age_group_mapping(Age_Group)) %>%
  filter(!is.na(Age_Category)) %>%
  group_by(County, Year, Age_Category) %>%
  summarise(Population = sum(Population))

TX_OADR <- TX_population %>%
  group_by(County, Year) %>%
  summarise(
    Population_65plus = sum(Population[Age_Category == "65-plus"]),
    Population_16to64 = sum(Population[Age_Category == "16-64"])
  ) %>%
  mutate(OADR = Population_65plus / Population_16to64)

write.xlsx(TX_OADR, file = "Documents/Master's Thesis/Labor Data/TX/TX_OADR(2021-2022).xlsx")