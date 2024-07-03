library(readxl)
library(openxlsx)

################################## CT #########################################
CT_Covariates_Final <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_Covariates_Final.xlsx")

#5mi
CT_Covariates_Final$within_5mi <- ifelse(CT_Covariates_Final$County == "Fairfield County, CT", 1,0)

#25mi
CT_Covariates_Final$within_25mi <- ifelse(CT_Covariates_Final$County == "Fairfield County, CT", 1,0)

#50mi
CT_target_counties50mi <- c("Fairfield County, CT", "Litchfield County, CT", "Middlesex County, CT", "New Haven County, CT")

CT_Covariates_Final$within_50mi <- ifelse(CT_Covariates_Final$County %in% CT_target_counties50mi, 1, 0)

#100mi
CT_target_counties100mi <- c("Fairfield County, CT", "Litchfield County, CT", "Middlesex County, CT", "New Haven County, CT", "Hartford County, CT", "New London County, CT", "Tolland County, CT", "Windham County, CT") 

CT_Covariates_Final$within_100mi <- ifelse(CT_Covariates_Final$County %in% CT_target_counties100mi, 1, 0)

write.xlsx(CT_Covariates_Final, file = "CT_Covariates_Final1.xlsx")

######################################## NJ ####################################
NJ_Covariates2 <- read_excel("Documents/Master's Thesis/Labor Data/NJ/NJ_Covariates2.xlsx")

#5mi
NJ_Covariates2$within_5mi <- 0

#25mi
NJ_Covariates2$within_25mi <- 0

#50mi
NJ_target_counties50mi <- c("Bergen County, NJ", "Hudson County, NJ", "Passiac County, NJ")

NJ_Covariates2$within_50mi <- ifelse(NJ_Covariates2$County %in% NJ_target_counties50mi, 1, 0)

#100mi
NJ_target_counties100mi <- c("Bergen County, NJ", "Essex County, NJ", "Hudson County, NJ", "Hunterdon County, NJ", "Mercer County, NJ", "Middlesex County, NJ", "Monmouth County, NJ", "Morris County, NJ", "Ocean County, NJ", "Passaic County, NJ", "Somerset County, NJ", "Sussex County, NJ", "Union County, NJ", "Warren County, NJ" )

NJ_Covariates2$within_100mi <- ifelse(NJ_Covariates2$County %in% NJ_target_counties100mi, 1, 0)

write.xlsx(NJ_Covariates2, file = "NJ_Covariates_Final.xlsx")

##################################### NY #######################################

NY_Covariates2 <- read_excel("Documents/Master's Thesis/Labor Data/NY/NY_Covariates2.xlsx")

#5mi
NY_Covariates2$within_5mi <- 0

#25mi
NY_target_counties25mi <- c("Putnam County, NY")
NY_Covariates2$within_25mi <- ifelse(NY_Covariates2$County %in% NY_target_counties25mi, 1, 0)

#50mi

NY_target_counties50mi <- c("Bronx County, NY", "Dutchess County, NY", "Kings County, NY", "Nassau County, NY", "New York County, NY", "Orange County, NY", "Putnam County, NY", "Queens County, NY", "Rockland County, NY", "Suffolk County, NY", "Westchester County, NY")

NY_Covariates2$within_50mi <- ifelse(NY_Covariates2$County %in% NY_target_counties50mi, 1, 0)

#100mi

NY_Covariates2$within_100mi <- 1

write.xlsx(NY_Covariates2, file = "Documents/Master's Thesis/Labor Data/NY/NY_Covariates_Final.xlsx")

######################################## MA ####################################

MA_Covariates1 <- read_excel("Documents/Master's Thesis/Labor Data/MA/MA_Covariates1.xlsx")

MA_Covariates1$within_5mi <- 0

#25mi

MA_Covariates1$within_25mi <- 0

#50mi

MA_Covariates1$within_50mi <- 0

#100mi

MA_Covariates1$within_100mi <- 1

write.xlsx(MA_Covariates1, file = "Documents/Master's Thesis/Labor Data/MA/MA_Covariates_Final.xlsx")

###################################### PA ######################################

PA_Covariates1 <- read_excel("Documents/Master's Thesis/Labor Data/PA/PA_Covariates1.xlsx")

PA_Covariates1$within_5mi <- 0

#25mi

PA_Covariates1$within_25mi <- 0

#50mi

PA_Covariates1$within_50mi <- 0

#100mi

PA_Covariates1$within_100mi <- 1

write.xlsx(PA_Covariates1, file = "Documents/Master's Thesis/Labor Data/PA/PA_Covariates_Final.xlsx")

################################### RI ########################################

RI_Covariates1 <- read_excel("Documents/Master's Thesis/Labor Data/RI/RI_Covariates1.xlsx")

RI_Covariates1$within_5mi <- 0

#25mi

RI_Covariates1$within_25mi <- 0

#50mi

RI_Covariates1$within_50mi <- 0

#100mi

RI_Covariates1$within_100mi <- 1

write.xlsx(RI_Covariates1, file = "Documents/Master's Thesis/Labor Data/RI/RI_Covariates_Final.xlsx")


################################### TX ##########################################

TX_Covariates_Final1 <- read_excel("Documents/Master's Thesis/Labor Data/TX/TX_Covariates_Final1.xlsx")

TX_Covariates_Final1$within_5mi <- ifelse(TX_Covariates_Final1$County == "Galveston County, TX", 1,0)

#25mi
TX_Covariates_Final1$within_25mi <- ifelse(TX_Covariates_Final1$County == "Galveston County, TX", 1,0)

#50mi
TX_target_counties50mi <- c("Brazoria County, TX", "Chambers County, TX", "Fort Bend County, TX", "Galveston County, TX", "Harris County, TX")

TX_Covariates_Final1$within_50mi <- ifelse(TX_Covariates_Final1$County %in% TX_target_counties50mi, 1, 0)

#100mi
TX_Covariates_Final1$within_100mi <- 1

write.xlsx(TX_Covariates_Final1, file = "Documents/Master's Thesis/Labor Data/TX_Covariates_Final2.xlsx")


