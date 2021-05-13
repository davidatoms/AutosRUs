# Import the libraries
library(tidyverse)
library(dplyr)

# Import data sets
mechacar_MPG_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
suspension_coil_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Linear regression model where MPG is the dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_MPG_table)
