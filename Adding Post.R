library(tidyr)
library(readxl)
library(openxlsx)
library(dplyr)

################################### TX #########################################

TX_Total <- read_excel("Documents/Master's Thesis/Labor Data/TX_Total.xlsx")

df <- TX_Total %>%
  mutate(Post = ifelse(Year < 2018 | (Year == 2018 & Month < 5), 0, 1))

write.xlsx(df, file = "Documents/Master's Thesis/Labor Data/TX_post.xlsx")

################################### CT ########################################

CT_Combined <- read_excel("Documents/Master's Thesis/Labor Data/CT_Combined.xlsx")

df <- CT_Combined %>%
  mutate(Post = ifelse(Year < 2012 | (Year == 2012 & Month < 12), 0, 1))

write.xlsx(df, file = "Documents/Master's Thesis/Labor Data/CT_post.xlsx")


