# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)
MechaCar_df <- read.csv(file = 'MechaCar_mpg.csv') #read in csv to df

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)) #generate summary statistics

# Deliverable 2: Summary Statistics on Suspension Coils

coil_table <- read.csv(file = 'Suspension_Coil.csv') #read the file

total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),) #using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- coil_table %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Deliverable 3: T-Tests on Suspension Coils

t.test(coil_table$PSI,mu=1500) # T-test across all lots

t.test(subset(coil_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500) # t-test lot 1

t.test(subset(coil_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500) # t-test lot 2

t.test(subset(coil_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500) # t-test lot 3
