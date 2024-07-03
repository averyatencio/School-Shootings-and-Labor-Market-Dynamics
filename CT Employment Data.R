library(readxl)
library(dplyr)
library(tidyr)
library(openxlsx)

#2007

CT_2007 <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_2007.xlsx")
#Renaming columns
names(CT_2007)[names(CT_2007) == "...2"] <- "measures"

names(CT_2007)[names(CT_2007) == "...1"] <- "county"

CT_2007 <- CT_2007 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2007 <- CT_2007 [complete.cases(CT_2007 [, setdiff(names(CT_2007), column_to_keep_na)]), ]

#pivoting data

CT_2007 <- pivot_longer(CT_2007, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2007 <- pivot_wider(CT_2007, names_from = measures, values_from = value)

write.xlsx(CT_2007, file = "CT_2007(edited).xlsx")

#2008
CT_2008 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2008.xls")

#Renaming columns
names(CT_2008)[names(CT_2008) == "...2"] <- "measures"

names(CT_2008)[names(CT_2008) == "...1"] <- "county"

CT_2008 <- CT_2008 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns
column_to_keep_na <- "county"

CT_2008 <- CT_2008 [complete.cases(CT_2008 [, setdiff(names(CT_2008), column_to_keep_na)]), ]

#pivoting data

CT_2008 <- pivot_longer(CT_2008, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2008 <- pivot_wider(CT_2008, names_from = measures, values_from = value)

write.xlsx(CT_2008, file = "CT_2008(edited).xlsx")

#2009

CT_2009 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2009.xls")

#Renaming columns
names(CT_2009)[names(CT_2009) == "...2"] <- "measures"

names(CT_2009)[names(CT_2009) == "...1"] <- "county"

CT_2009 <- CT_2009 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns
column_to_keep_na <- "county"

CT_2009 <- CT_2009 [complete.cases(CT_2009 [, setdiff(names(CT_2009), column_to_keep_na)]), ]

#pivoting data

CT_2009 <- pivot_longer(CT_2009, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2009 <- pivot_wider(CT_2009, names_from = measures, values_from = value)

write.xlsx(CT_2009, file = "CT_2009(edited).xlsx")

#2010

CT_2010 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2010.xlsx")

#Renaming columns
names(CT_2010)[names(CT_2010) == "...2"] <- "measures"

names(CT_2010)[names(CT_2010) == "...1"] <- "county"

CT_2010 <- CT_2010 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns
column_to_keep_na <- "county"

CT_2010 <- CT_2010 [complete.cases(CT_2010 [, setdiff(names(CT_2010), column_to_keep_na)]), ]

#pivoting data

CT_2010 <- pivot_longer(CT_2010, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2010 <- pivot_wider(CT_2010, names_from = measures, values_from = value)

write.xlsx(CT_2010, file = "CT_2010_1(edited).xlsx")

#2011

CT_2011 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2011.xlsx")

#Renaming columns
names(CT_2011)[names(CT_2011) == "...2"] <- "measures"

names(CT_2011)[names(CT_2011) == "...1"] <- "county"

CT_2011 <- CT_2011 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2011 <- CT_2011 [complete.cases(CT_2011 [, setdiff(names(CT_2011), column_to_keep_na)]), ]

#pivoting data

CT_2011 <- pivot_longer(CT_2011, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2011 <- pivot_wider(CT_2011, names_from = measures, values_from = value)

write.xlsx(CT_2011, file = "CT_2011(edited).xlsx")

#2012

CT_2012 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2012.xlsx")

#Renaming columns
names(CT_2012)[names(CT_2012) == "...2"] <- "measures"

names(CT_2012)[names(CT_2012) == "...1"] <- "county"

CT_2012 <- CT_2012 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2012 <- CT_2012 [complete.cases(CT_2012 [, setdiff(names(CT_2012), column_to_keep_na)]), ]

#pivoting data

CT_2012 <- pivot_longer(CT_2012, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2012 <- pivot_wider(CT_2012, names_from = measures, values_from = value)

write.xlsx(CT_2012, file = "CT_2012(edited).xlsx")

#2013

CT_2013 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2013.xlsx")

#Renaming columns
names(CT_2013)[names(CT_2013) == "...2"] <- "measures"

names(CT_2013)[names(CT_2013) == "...1"] <- "county"

CT_2013 <- CT_2013 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2013 <- CT_2013 [complete.cases(CT_2013 [, setdiff(names(CT_2013), column_to_keep_na)]), ]

#pivoting data

CT_2013 <- pivot_longer(CT_2013, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2013 <- pivot_wider(CT_2013, names_from = measures, values_from = value)

write.xlsx(CT_2013, file = "CT_2013(edited).xlsx")

#2014

CT_2014 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2014.xlsx")

#Renaming columns
names(CT_2014)[names(CT_2014) == "...2"] <- "measures"

names(CT_2014)[names(CT_2014) == "...1"] <- "county"

CT_2014 <- CT_2014 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2014 <- CT_2014 [complete.cases(CT_2014 [, setdiff(names(CT_2014), column_to_keep_na)]), ]

#pivoting data

CT_2014 <- pivot_longer(CT_2014, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2014 <- pivot_wider(CT_2014, names_from = measures, values_from = value)

write.xlsx(CT_2014, file = "CT_2014(edited).xlsx")

#2015

CT_2015 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2015.xlsx")

#Renaming columns
names(CT_2015)[names(CT_2015) == "...2"] <- "measures"

names(CT_2015)[names(CT_2015) == "...1"] <- "county"

CT_2015 <- CT_2015 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2015 <- CT_2015 [complete.cases(CT_2015 [, setdiff(names(CT_2015), column_to_keep_na)]), ]

#pivoting data

CT_2015 <- pivot_longer(CT_2015, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2015 <- pivot_wider(CT_2015, names_from = measures, values_from = value)

write.xlsx(CT_2015, file = "CT_2015(edited).xlsx")

#2016

CT_2016 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2016.xlsx")

#Renaming columns
names(CT_2016)[names(CT_2016) == "...2"] <- "measures"

names(CT_2016)[names(CT_2016) == "...1"] <- "county"

CT_2016 <- CT_2016 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2016 <- CT_2016 [complete.cases(CT_2016 [, setdiff(names(CT_2016), column_to_keep_na)]), ]

#pivoting data

CT_2016 <- pivot_longer(CT_2016, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2016 <- pivot_wider(CT_2016, names_from = measures, values_from = value)

write.xlsx(CT_2016, file = "CT_2016(edited).xlsx")

#2017

CT_2017 <- read_excel("Documents/Master's Thesis/Labor Data/CT/Beginning Sets/CT_2017.xlsx")

#Renaming columns
names(CT_2017)[names(CT_2017) == "...2"] <- "measures"

names(CT_2017)[names(CT_2017) == "...1"] <- "county"

CT_2017 <- CT_2017 %>%
  mutate(measures = ifelse(measures == "%", "unemp_rate", measures))

#dropping NA columns

column_to_keep_na <- "county"

CT_2017 <- CT_2017 [complete.cases(CT_2017 [, setdiff(names(CT_2017), column_to_keep_na)]), ]

#pivoting data

CT_2017 <- pivot_longer(CT_2017, cols = -c(county, measures), names_to = "month", values_to = "value")

CT_2017 <- pivot_wider(CT_2017, names_from = measures, values_from = value)

write.xlsx(CT_2017, file = "CT_2017(edited).xlsx")

#appending datasets together

datasets <- list(CT_2007, CT_2008, CT_2009, CT_2010, CT_2011, CT_2012, CT_2013, CT_2014, CT_2015, CT_2016, CT_2017)

#Combining datasets into one df
combined_data <- do.call(rbind, datasets)

write.xlsx(combined_data, "CT_combined_data.xlsx", rowNames = FALSE)

CT_combined_data <- read_excel("Documents/Master's Thesis/Labor Data/CT/CT_combined_data.xlsx")

county_order <- c("FAIRFIELD COUNTY", "HARTFORD COUNTY", "LITCHFIELD COUNTY", "MIDDLESEX COUNTY", "NEW HAVEN COUNTY", "NEW LONDON COUNTY", "TOLLAND COUNTY", "WINDHAM COUNTY")

CT_Employment_Stats <- arrange(CT_combined_data, match(county, county_order))

write.xlsx(CT_Employment_Stats, file = "CT_Employment_Stats.xlsx")
