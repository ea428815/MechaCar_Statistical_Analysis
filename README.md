# MechaCar_Statistical_Analysis
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. These were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, including; vehicle length, vehicle wieght, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the dataset. 

### Resources
RStudio, MechaCar_mpg.csv, suspension_Coil.csv

## Linear Regression to Predict MPG



Observe that vehicle length and ground clearance provide a non-random amount of variance to the mpg values in the dataset. The p-values are less than the alpha level of .05. Thus, null hypothesis is rejected, and slope is not zero. This linear model does predict mpg effectively, as the R-squared value of .7149 means that there is a strong correlation between the variables.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


According to the total summary, the variance of the suspension coils is less than 100 pounds per square inch, but when we look at the individual lots, we can see that lot 3 has a variance of 170. This does not meet the design specification on the individual lot. 

## T-Tests on Suspension Coils
These tests were used to determine if the PSI is statistically different from the population mean of 1500 pounds per square inch. 

### All lots
The p-value is 1 and is significant. The null hypothesis can be accepted.


### Lot 1
The p-value is 1 and is greater than .05. The null hypothesis can be accepted.



### Lot 2
The p-value is .6072 and is significant. The null hypothesis can be accepted. 


### Lot 3
The p-value is .04168 and is not significant. The null hypothesis can be rejected. 


## Study Design: MechaCar vs Competition
MechaCard should test highway fuel efficiency. Are MechaCars as fuel efficient as the competitor? The null hypothesis would be, "do MechCars average more miles per gallon than the competitor?". This would be tested with a t-test because it will tell us if there is a statisitical difference in the means for the average fuel efficiency. The data we would need is the distance travelled per unit volume of fuel used.

