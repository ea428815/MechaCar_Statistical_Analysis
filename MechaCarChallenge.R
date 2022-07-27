### Deliverable 1
### load packages ###
library(dplyr)
library(tidyverse)

###Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

###Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter
LinReg <-lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data = mecha_mpg)
summary(LinReg)

###Using the summary() function, determine the p-value and the r-squared value for the linear regression model
linreg<-lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data = mecha_mpg)
summary(linreg)

###Deliverable 2
mecha_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


### Write an RScript that creates a total_summary df using summarize function to get mean, media, variance and std. dev of PSI column
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep')
total_summary

### write lot summary
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                                       Median=median(PSI),
                                                                                       Variance=var(PSI),
                                                                                       SD=sd(PSI), .groups = 'keep')
lot_summary


### Deliverable 3
### t-test for all lots
t.test(mecha_coil$PSI, mu=1500)

Lot1 = subset(mecha_coil, Manufacturing_Lot == 'Lot1')
Lot1

Lot2 = subset(mecha_coil, Manufacturing_Lot == 'Lot2')
Lot2

Lot3 = subset(mecha_coil, Manufacturing_Lot == 'Lot3')
Lot3

###t-test for lot 1, lot 2, and lot 3
t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)

### Deliverable 

