library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

#################################### CT ########################################

CT_Covariates<- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_Covariates(edited).xlsx")

#Adding months
all_data <- expand_grid(Year = unique(CT_Covariates$Year),
                        month = 1:12,
                        County = unique(CT_Covariates$County))

#Merge
data_with_all <- merge(all_data, CT_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

county_order <- c("Fairfield County, CT", "Hartford County, CT", "Litchfield County, CT", "Middlesex County, CT", "New Haven County, CT", "New London County, CT", "Tolland County, CT", "Windham County, CT")

CT_Covariates_edited <- arrange(data_with_all, match(County, county_order))

write.xlsx(CT_Covariates_edited, file = "CT_Covariates_Final.xlsx")

#Adding months for CT Age

CT_OADR <- read_excel("Documents/Master's Thesis/Public Data/CT/CT_OADR.xlsx")

CT_OADR <- CT_OADR[CT_OADR$Year >= 2007, ]

all_data <- expand_grid(Year = unique(CT_OADR$Year),
                        month = 1:12,
                        County = unique(CT_OADR$County))

#Merge
data_with_all <- merge(all_data, CT_OADR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

county_order <- c("Fairfield County, CT", "Hartford County, CT", "Litchfield County, CT", "Middlesex County, CT", "New Haven County, CT", "New London County, CT", "Tolland County, CT", "Windham County, CT")

CT_OADR_edited <- arrange(data_with_all, match(County, county_order))

write.xlsx(CT_OADR_edited, file = "CT_OADR_edite.xlsx")

#Adding months for CT race
CT_Race <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_Race(edited).xlsx")

all_data <- expand_grid(Year = unique(CT_Race$Year),
                        month = 1:12,
                        County = unique(CT_Race$County))

#Merge 
data_with_all <- merge(all_data, CT_Race, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

county_order <- c("Fairfield County, CT", "Hartford County, CT", "Litchfield County, CT", "Middlesex County, CT", "New Haven County, CT", "New London County, CT", "Tolland County, CT", "Windham County, CT")

CT_Race_edited <- arrange(data_with_all, match(County, county_order))

write.xlsx(CT_Race_edited, file = "CT_Race_Final.xlsx")

################################## NJ ##########################################

#Adding months for NJ Income
NJ_Income <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Income.xlsx")

all_data <- expand_grid(Year = unique(NJ_Income$Year),
                        month = 1:12,
                        County = unique(NJ_Income$County))

#Merge
data_with_all <- merge(all_data, NJ_Income, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

county_order <- c("Bergen, NJ", "Essex, NJ", "Hudson, NJ", "Hunterdon, NJ", "Mercer, NJ", "Middlesex, NJ", "Monmouth, NJ", "Morris, NJ", "Ocean, NJ", "Passaic, NJ", "Somerset, NJ", "Sussex, NJ", "Union, NJ", "Warren, NJ" )


NJ_Income<- arrange(data_with_all, match(County, county_order))

write.xlsx(NJ_Income, file = "NJ_Income(edited).xlsx")

#Adding months for NJ Covariates

NJ_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Covariates_1.xlsx")


all_data <- expand_grid(Year = unique(NJ_Covariates$Year),
                        month = 1:12,
                        County = unique(NJ_Covariates$County))

#Merge 
data_with_all <- merge(all_data, NJ_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

county_order <- c("Bergen, NJ", "Essex, NJ", "Hudson, NJ", "Hunterdon, NJ", "Mercer, NJ", "Middlesex, NJ", "Monmouth, NJ", "Morris, NJ", "Ocean, NJ", "Passaic, NJ", "Somerset, NJ", "Sussex, NJ", "Union, NJ", "Warren, NJ" )


NJ_Covariates2 <- arrange(data_with_all, match(County, county_order))

data_arranged <- NJ_Covariates2%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "NJ_Covariates2.xlsx")

#Adding months for OADR

NJ_OADR <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_OADR.xlsx")

counties_to_drop <- c("Atlantic County, NJ", "Burlington County, NJ", "Camden County, NJ", "Cape May County, NJ", "Cape May County, NJ", "Cumberland County, NJ", "Gloucester County, NJ", "Salem County, NJ")


NJ_OADR1 <- NJ_OADR %>%
  filter(!County %in% counties_to_drop)

all_data <- expand_grid(Year = unique(NJ_OADR1$Year),
                        month = 1:12,
                        County = unique(NJ_OADR1$County))

#Merge
data_with_all <- merge(all_data, NJ_OADR1, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/NJ/NJ_OADR(edited).xlsx")

#################################### NY #########################################

NY_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/NY/Beginning Sets/NY_Covariates1.xlsx")

all_data <- expand_grid(Year = unique(NY_Covariates$Year),
                        month = 1:12,
                        County = unique(NY_Covariates$County))

#Merge 
data_with_all <- merge(all_data, NY_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/NY/NY_Covariates22.xlsx")

#NY OADR

NY_OADR <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_OADR.xlsx")

counties_to_drop <- c("Albany County, NY", "Allegany County, NY", "Broome County, NY", "Cattaraugus County, NY", "Cayuga County, NY", "Chautauqua County, NY", "Chemung County, NY", "Chenango County, NY", "Clinton County, NY", "Cortland County, NY", "Delaware County, NY", "Erie County, NY", "Essex County, NY", "Franklin County, NY", "Fulton County, NY", "Genesee County, NY", "Hamilton County, NY", "Herkimer County, NY", "Jefferson County, NY", "Lewis County, NY", "Livingston County, NY", "Madison County, NY", "Monroe County, NY", "Montgomery County, NY", "Niagara County, NY","Oneida County, NY", "Onondaga County, NY", "Ontario County, NY", "Orleans County, NY", "Oswego County, NY", "Otsego County, NY", "Rensselaer County, NY", "St. Lawrence County, NY", "Saratoga County, NY","Schenectady County, NY", "Schenectady County, NY", "Schuyler County, NY", "Seneca County, NY", "Steuben County, NY", "Tioga County, NY", "Tompkins County, NY", "Warren County, NY", "Washington County, NY", "Wayne County, NY", "Wyoming County, NY", "Yates County, NY")  

NY_OADR <- NY_OADR %>%
  filter(!County %in% counties_to_drop)

all_data <- expand_grid(Year = unique(NY_OADR$Year),
                        month = 1:12,
                        County = unique(NY_OADR$County))

#Merge
data_with_all <- merge(all_data, NY_OADR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/NY/NY_OADR(edited).xlsx")


####################################### MA ######################################

MA_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA_Covariates.xlsx")

all_data <- expand_grid(Year = unique(MA_Covariates$Year),
                        month = 1:12,
                        County = unique(MA_Covariates$County))

#Merge
data_with_all <- merge(all_data, MA_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/MA/MA_Covariates1.xlsx")

#OADR

MA_OADR <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA_OADR.xlsx")

all_data <- expand_grid(Year = unique(MA_OADR$Year),
                        month = 1:12,
                        County = unique(MA_OADR$County))

#Merge
data_with_all <- merge(all_data, MA_OADR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/MA/MA_OADR(edited).xlsx")



######################################## PA ####################################

PA_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Covariates.xlsx")

all_data <- expand_grid(Year = unique(PA_Covariates$Year),
                        month = 1:12,
                        County = unique(PA_Covariates$County))

#Merge
data_with_all <- merge(all_data, PA_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/PA/PA_Covariates1.xlsx")

#OADR

PA_OADR <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_OADR.xlsx")

all_data <- expand_grid(Year = unique(PA_OADR$Year),
                        month = 1:12,
                        County = unique(PA_OADR$County))

#Merge 
data_with_all <- merge(all_data, PA_OADR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/PA/PA_OADR(edited).xlsx")



######################################## RI ####################################

RI_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_Covariates.xlsx")

all_data <- expand_grid(Year = unique(RI_Covariates$Year),
                        month = 1:12,
                        County = unique(RI_Covariates$County))

#Merge
data_with_all <- merge(all_data, RI_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/RI/RI_Covariates1.xlsx")

#OADR

RI_OADR <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_OADR_Full.xlsx")

all_data <- expand_grid(Year = unique(RI_OADR$Year),
                        month = 1:12,
                        County = unique(RI_OADR$County))

#Merge
data_with_all <- merge(all_data, RI_OADR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/RI/RI_OADR.xlsx")

################################### TX ##########################################

TX_Covariates <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Covariates_Final.xlsx")

all_data <- expand_grid(Year = unique(TX_Covariates$Year),
                        month = 1:12,
                        County = unique(TX_Covariates$County))

#Merge 
data_with_all <- merge(all_data, TX_Covariates, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/TX/TX_Covariates_Final1.xlsx")

#OADR

TX_OADR_2013_2020_ <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_OADR(2013-2020).xlsx")

TX_OADR_2021_2022_ <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_OADR(2021-2022).xlsx")


combined_data <- rbind(TX_OADR_2013_2020_, TX_OADR_2021_2022_)

combined_data2 <- combined_data %>%
  arrange(County, as.integer(Year))

county_to_keep <- c("Austin County, TX", "Brazoria County, TX", "Chambers County, TX", "Colorado County, TX", "Fort Bend County, TX", "Galveston County, TX", "Grimes County, TX", "Hardin County, TX", "Harris County, TX", "Jefferson County, TX", "Liberty County, TX", "Matagorda County, TX", "Montgomery County, TX", "Orange County, TX", "Polk County, TX", "San Jacinto County, TX", "Tyler County, TX", "Walker County, TX", "Waller County, TX", "Wharton County, TX") 

data_filtered <- combined_data2 %>%
  filter(County %in% county_to_keep)

all_data <- expand_grid(Year = unique(data_filtered$Year),
                        month = 1:12,
                        County = unique(data_filtered$County))

#Merge
data_with_all <- merge(all_data, data_filtered, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/TX/TX_OADR(edited).xlsx")

#Adding TX CR

TX_CR <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_CR.xlsx")

all_data <- expand_grid(Year = unique(TX_CR$Year),
                        month = 1:12,
                        County = unique(TX_CR$County))

#Merge
data_with_all <- merge(all_data, TX_CR, by = c("Year", "County"), all.x = TRUE)

data_with_all <- data_with_all %>%
  group_by(Year, County) %>%
  mutate(month = 1:n()) %>%
  ungroup()

#Arrange

data_arranged <- data_with_all%>%
  arrange(County, Year)

write.xlsx(data_arranged, file = "Documents/Master's Thesis/Labor Data/TX/TX_CR_edited.xlsx")




