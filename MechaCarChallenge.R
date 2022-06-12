#ADDING LIBRARIES
library(dplyr)
library(tidyverse)

#Read CSV as DATAFRAME
car_mpg <- read.csv("MechaCar_mpg.csv")

#Create LINEAR REGRESSION FUNCTION for MPG
linreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg)

#summarize data
summary(linreg)
