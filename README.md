# MechaCar_Statistical_Analysis
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. These were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, including; vehicle length, vehicle wieght, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the dataset. 

### Resources
RStudio, MechaCar_mpg.csv, suspension_Coil.csv

## Linear Regression to Predict MPG

<img width="699" alt="LinearRegression1" src="https://user-images.githubusercontent.com/62758795/181350089-42e9a07c-25de-42e1-b8e5-4197b29ad864.png">

Observe that vehicle length and ground clearance provide a non-random amount of variance to the mpg values in the dataset. The p-values are less than the alpha level of .05. Thus, null hypothesis is rejected, and slope is not zero. This linear model does predict mpg effectively, as the R-squared value of .7149 means that there is a strong correlation between the variables.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

<img width="686" alt="Screen Shot 2022-07-27 at 1 48 55 PM" src="https://user-images.githubusercontent.com/62758795/181350465-54d28db5-03b2-48d3-a1b7-e2bc1fe49a2e.png">

According to the total summary, the variance of the suspension coils is less than 100 pounds per square inch, but when we look at the individual lots, we can see that lot 3 has a variance of 170. This does not meet the design specification on the individual lot. 

## T-Tests on Suspension Coils
These tests were used to determine if the PSI is statistically different from the population mean of 1500 pounds per square inch. 

### All lots
The p-value is equal 0.06 and significant. Thus the null hypothesis can be accepted.

<img width="523" alt="Screen Shot 2022-07-27 at 2 59 45 PM" src="https://user-images.githubusercontent.com/62758795/181351880-fe93fc1f-6e7b-4dac-abd1-4dceae375ece.png">

### Lot 1. 
The p-value is 1 and is greater than .05. The null hypothesis can be accepted.
### Lot 2
The p-value is .6072 and is significant. The null hypothesis can be accepted. 
### Lot 3
The p-value is .04168 and is not significant. The null hypothesis can be rejected. 

<img width="699" alt="Screen Shot 2022-07-27 at 3 06 08 PM" src="https://user-images.githubusercontent.com/62758795/181352469-2d0b15fb-d02a-478d-a6b2-0693a3dcd1fd.png">

## Study Design: MechaCar vs Competition
MechaCar would test highway fuel efficiency. So, are MechaCar fuel efficient as theircompared to their competition? The null hypothesis would be, "Do MechCar average more miles per gallon than the competitor?". This would be tested with a t-test since it will tell us if there is a statisitical difference in the means for the average fuel efficiency. The data we need would be the distance travelled per unit volume of fuel used.

