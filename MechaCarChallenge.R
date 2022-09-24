### part 1

library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(MechaCar)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))

### Part 2

Suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(Suspension)

total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI) , SD=sd(PSI))

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI) , SD=sd(PSI))

### Part 3

?t.test()

t.test(Suspension$PSI, mu=1500)

test <- subset(Suspension, Manufacturing_Lot == 'Lot1', select = PSI)

t.test(subset(Suspension, Manufacturing_Lot == 'Lot1', select = PSI), mu=1500)

t.test(subset(Suspension, Manufacturing_Lot == 'Lot2', select = PSI), mu=1500)

t.test(subset(Suspension, Manufacturing_Lot == 'Lot3', select = PSI), mu=1500)
