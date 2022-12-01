pacman::p_load(readxl, utils, tidyverse, lubridate,skimr)
setwd("M:/ISA 401/ISA 401/Data/Final Project/Final Project Data")

oh_2000 = read_excel("2000 Ohio Voter Turnout.xlsx")
oh_2004 = read_excel("2004 Ohio Voter Turnout.xlsx")
oh_2008 = read_excel("2008 Ohio Voter Turnout.xlsx")
oh_2012 = read_excel("2012 Ohio Voter Turnout.xlsx")
oh_2016 = read_excel("2016 Ohio Voter Turnout.xlsx")
oh_2020 = read_excel("2020 Ohio Voter Turnout.xlsx")

county = rbind(oh_2000,oh_2004,oh_2008,oh_2012,oh_2016,oh_2020)
print(county)

skim(county)
# no missing values

national = read_excel("2020 Voter Turnout By State.xlsx")
print(national)

skim(national)
#no missing values

write.csv(county,"M:/ISA 401/ISA 401/Data/Final Project/Final Project Data/County_Data.csv",col.names = TRUE)
write.csv(national,"M:/ISA 401/ISA 401/Data/Final Project/Final Project Data/National_Data.csv",col.names = TRUE)
