# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)
MechaCar_df <- read.csv(file = 'MechaCar_mpg.csv') #read in csv to df

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)) #generate summary statistics
