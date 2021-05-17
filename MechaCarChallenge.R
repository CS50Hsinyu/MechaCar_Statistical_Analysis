
#Deliverable 1: Linear Regression to Predict MPG

#Import library
library(dplyr)
library(tidyverse)


#Import and read file
MechaCar_mpg<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression
model<-lm(formula=mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg)


#Determine the p-value and the r-squared value
summary(model)



#Deliverable 2: Create Visualizations for the Trip Analysis

#Import and read file
Coil<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


#Creates a total_summary dataframe
total_summary <- Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


total_summary


#Creates a lot_summary dataframe
lot_summary<- Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary


#Deliverable 3: T-Tests on Suspension Coils


t.test(Coil$PSI,mu=1500,alternative="two.sided")

Lot1<-subset(Coil,Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI,mu=1500,alternative="two.sided")


Lot2<-subset(Coil,Manufacturing_Lot=="Lot2")
t.test(Lot2$PSI,mu=1500,alternative="two.sided")

Lot3<-subset(Coil,Manufacturing_Lot=="Lot3")
t.test(Lot3$PSI,mu=1500,alternative="two.sided")


