# MechaCar_AutosRUs_Analysis

# Overview
The purpose of this project is to review data from MechaCar projects for analysis on what can be changed to improve the MechaCar Project. 
This project includes:
- Performance of multiple linear regression models to identify variables that predict gas mileage on a MechaCar project.
- T-tests  to determine if the suspension coils used are effective
- Summary statistics on suspension coils

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/99559096/173224960-1ca55b54-46bc-4956-87ef-ab207a15701e.png)

1. The variables picutred that show a statistically non-random amount of variance are the Vehicle Length, and the Ground Clearance of the vehicle. These have a p-value less than 0.05 - this is the normal significance level, anything above is statistically insignificant.

2. The p-value for this model is shown to be 5.25e-11, far less than the normal significance level, indicating that the slope will not be zero.

3. The r-squared value is 0.7149 which shows 71.5% of predictions (overall) would be determinable. This is an effective prediction tool. 

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/99559096/173226080-315c84b7-cc77-4d97-a489-b340f5a8faa1.png)

"The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch."
Looking at the total data above - the variance is a 62.3, this shows less than 100, which would be a success.
However we see from the lot summaries that the lot 1 and lot 2 have a significantly lower variance than lot 3 shown below

![image](https://user-images.githubusercontent.com/99559096/173226203-67c12fa2-3ffc-4dea-a0f9-e2502ed9ab1d.png)

Lot 1 and lot 2 are successful in meeting conditional specifications, Lot 3 is a failure.

## T-test on Suspension Coils
For the T-tests provided, we will determine if the manufacturing lots and each lot are statistically different from the population mean of 1,500 PSI

![image](https://user-images.githubusercontent.com/99559096/173226478-e3fac673-2194-4ff1-9d92-e2220b02642c.png)

Shown above is the T-test for the overall dataset, we can see that the p-value is .06 - this is far above the normal significance level of 0.05. This data supports that all three lots are statistically similar to the 1,500 population mean.

![image](https://user-images.githubusercontent.com/99559096/173226572-72c6b84a-bffc-47be-9053-47a807dbc837.png)

Lot 1 has a p-value of 1, showing that the mean is a true 1,500 - matching the population mean. 

![image](https://user-images.githubusercontent.com/99559096/173226616-53a979f7-dbc3-4dc1-ab0f-f5cfc5a936be.png)

Lot 2 has a p-value of 0.06 - much higher than the normal significance level. showing statistical similarity.

![image](https://user-images.githubusercontent.com/99559096/173226661-c6e958dd-5ec5-4be8-9739-1b99c3e8577a.png)

Lot 3 has a p-value of 0.041, showing a statistical difference between the mean of lot 3 and our population mean of 1,500

## Study Design: MechaCar vs Competition

Metrics I would focus on for competition is Fuel efficiency and body type.
Null Hypothesis: Fuel efficiency and body type are customer preference over competitor brand.
Alternate Hypothesis: Fuel efficiency and body type are less than or equal to the competitor brand.
Data needed would be samples from MechaCar - fuel efficiencies and body types - and any data from competitor brand(s), without direct data access, we will have to go by marketed rates.

