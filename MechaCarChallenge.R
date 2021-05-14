#Import libraries
library(tidyverse)
library(dplyr)

#Import datasets
mechacar_MPG_table <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)
head(mechacar_MPG_table)
suspension_coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)


#Linear regression model where MPG is dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_MPG_table)

#Summary statistics of linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_MPG_table))

#Suspension Coil PSI summary
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Suspension Coil PSI summary grouped by Manufacturing Lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#T-test to determine if PSI across all lots is statistically different from population mean of 1500 lbs per sq in
t.test(suspension_coil_table$PSI, mu=1500)

#T-test to determing if PSI by manufacturing lot is statistically different from population mean of 1500 lbs per sq in
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
