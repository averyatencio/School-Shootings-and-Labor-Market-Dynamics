## Below is the code used to provide the descriptive statistics for the analysis. Most notably, this code was used to 
prove the parallel trend assumption necessary to employ a difference-in-difference methodology. The rest of the R and
Stata code used in the analysis is located in the main branch along with the excels needed to complete the replication ##

############################ Parallel Trends CT #############################

CT<- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Code/Final Excels/CT_Combined_Yearly.xlsx")

#Employment

#50mi
filtered_data50mi <- subset((CT), within_50mi == 1)

filtered_data50 <- filtered_data50mi %>%
  filter(Year >= "2010" & Year <= "2015")

ggplot(filtered_data50, aes(x = Year, y = emp_rate_adj, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Employment Rate", color = "County") +
  ggtitle("CT Employment Rate over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


#100 mi

filtered_data100mi <- subset((CT), within_100mi == 1)

filtered_data100 <- filtered_data100mi %>%
  filter(Year >= "2010" & Year <= "2015")

ggplot(filtered_data100, aes(x = Year, y = emp_rate_adj, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Employment Rate", color = "County") +
  ggtitle("CT Employment Rate over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


#Unemployment

#50

ggplot(filtered_data50, aes(x = Year, y = unemp_rate_adj, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Unemployment Rate", color = "County") +
  ggtitle("CT Unemployment Rate over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


#100
ggplot(filtered_data100, aes(x = Year, y = unemp_rate_adj, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Unemployment Rate", color = "County") +
  ggtitle("CT Unemployment Rate over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


#LFPR

#50

ggplot(filtered_data50, aes(x = Year, y = LFPR, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "LFPR", color = "County") +
  ggtitle("CT LFPR over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


#100
ggplot(filtered_data100, aes(x = Year, y = LFPR, color = ifelse(County == "Fairfield County, CT", "Fairfield County, CT", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "LFPR", color = "County") +
  ggtitle("CT LFPR over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2012, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Fairfield County, CT" = "blue", "Other" = "light blue"), name = "County")


################################### Parellel Trends TX ###############################

TX <- read_excel("Documents/Master's Thesis/Labor Term Paper/Labor Code/Final Excels/TX_Total_Yearly.xlsx")

#Employment

#50mi
filtered_data50mi <- subset((TX), within_50mi == 1)

filtered_data50 <- filtered_data50mi %>%
  filter(Year >= "2015" & Year <= "2022")


ggplot(filtered_data50, aes(x = Year, y = emp_rate_adj, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Employment Rate", color = "County") +
  ggtitle("TX Employment Rate over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")


# 100 mi
filtered_data100mi <- subset((TX), within_100mi == 1)

filtered_data100 <- filtered_data100mi %>%
  filter(Year >= "2015" & Year <= "2022")

ggplot(filtered_data100, aes(x = Year, y = emp_rate_adj, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Employment Rate", color = "County") +
  ggtitle("TX Employment Rate over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")


#Unemployment

#50mi

ggplot(filtered_data50, aes(x = Year, y = unemp_rate_adj, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Unemployment Rate", color = "County") +
  ggtitle("TX Unemployment Rate over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")

# 100 mi
ggplot(filtered_data100, aes(x = Year, y = unemp_rate_adj, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "Unemployment Rate", color = "County") +
  ggtitle("TX Unemployment Rate over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")

#LFPR

#50
ggplot(filtered_data50, aes(x = Year, y = LFPR, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "LFPR", color = "County") +
  ggtitle("TX LFPR over Time 50mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")


#100
ggplot(filtered_data100, aes(x = Year, y = LFPR, color = ifelse(County == "Galveston County, TX", "Galveston County, TX", "Other"), group = County)) +
  geom_line() + 
  labs(x = "Year", y = "LFPR", color = "County") +
  ggtitle("TX LFPR over Time 100mi") +
  theme_minimal() +
  geom_vline(xintercept = 2018, linetype = "dashed", color = "red") +  
  scale_color_manual(values = c("Galveston County, TX" = "blue", "Other" = "light blue"), name = "County")


#################################### OADR ######################################

filtered_data100mi <- subset((CT), within_100mi == 1)

filtered_data100 <- filtered_data100mi %>%
  filter(Year >= "2010" & Year <= "2015")

filtered_data100 <- filtered_data100 %>%
  filter(County == "Fairfield County, CT")

ggplot(filtered_data100, aes(x = Year, y = OADR, color = County)) +
  geom_line() +
  labs(x = "Year", y = "OADR", color = "County") +
  ggtitle("CT OADR over Time") +
  theme_minimal() +
  xlim(2010, 2015)

ggplot(filtered_data100, aes(x = Year, y = Population_16to64, color = County)) +
  geom_line() +
  labs(x = "Year", y = "Population", color = "County") +
  ggtitle("CT Population aged 16 to 64 over Time") +
  theme_minimal() +
  xlim(2010, 2015)

filtered_data100mi <- subset((TX), within_100mi == 1)

filtered_data100 <- filtered_data100mi %>%
  filter(Year >= "2015" & Year <= "2022")

filtered_data100 <- filtered_data100 %>%
  filter(County == "Galveston County, TX")


ggplot(filtered_data100, aes(x = Year, y = OADR, color = County)) +
  geom_line() +
  labs(x = "Year", y = "OADR", color = "County") +
  ggtitle("TX OADR over Time") +
  theme_minimal() +
  xlim(2015, 2022)

ggplot(filtered_data100, aes(x = Year, y = Population_16to64, color = County)) +
  geom_line() +
  labs(x = "Year", y = "Population", color = "County") +
  ggtitle("TX Population aged 16 to 64 over Time") +
  theme_minimal() +
  xlim(2015, 2022)

##################################### CCR ######################################


ggplot(filtered_data100, aes(x = Year, y = CCR, color = County)) +
  geom_line() +
  labs(x = "Year", y = "CCR", color = "County") +
  ggtitle("CT CCR over Time") +
  theme_minimal() +
  xlim(2010,2015)

ggplot(filtered_data100, aes(x = Year, y = CCR, color = County)) +
  geom_line() +
  labs(x = "Year", y = "CCR", color = "County") +
  ggtitle("TX CCR over Time") +
  theme_minimal() +
  xlim(2015, 2022)

##################################### POC ####################################

ggplot(filtered_data100, aes(x = Year, y = POC, color = County)) +
  geom_line() +
  labs(x = "Year", y = "POC", color = "County") +
  ggtitle("CT Percent POC over Time") +
  theme_minimal() +
  xlim(2010,2015)

ggplot(filtered_data100, aes(x = Year, y = POC, color = County)) +
  geom_line() +
  labs(x = "Year", y = "POC", color = "County") +
  ggtitle("TX POC over Time") +
  theme_minimal() +
  xlim(2015, 2022)

###################################### Permits ################################

ggplot(filtered_data100, aes(x = Year, y = Housing_Permits, color = County)) +
  geom_line() +
  labs(x = "Year", y = "Housing Permits", color = "County") +
  ggtitle("CT Housing Permits over Time") +
  theme_minimal() +
  xlim(2010,2015)

ggplot(filtered_data100, aes(x = Year, y = Housing_Permits, color = County)) +
  geom_line() +
  labs(x = "Year", y = "Housing Permits", color = "County") +
  ggtitle("TX Housing Permits over Time") +
  theme_minimal() +
  xlim(2015, 2022)
