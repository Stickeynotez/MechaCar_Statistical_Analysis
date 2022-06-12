#ADDING LIBRARIES
library(dplyr)
library(tidyverse)

#Read CSV as DATAFRAME
car_mpg <- read.csv("MechaCar_mpg.csv")

#Create LINEAR REGRESSION FUNCTION for MPG
linreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg)

#summarize data
summary(linreg)


#read suspension coil into dataframe
coil <- read.csv("Suspension_Coil.csv")

#create summary dataframe
total_summary <- summarize(coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#create summary dataframe by lot
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#t-test for combined lots vs. a population mean of 1500
t.test(coil$PSI, mu = 1500)

# Create subsets of our original table to perform t-tests on
lot1 <- subset(coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(coil, Manufacturing_Lot=="Lot3")

#t-test for individual lots vs. the population mean of 1500
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
