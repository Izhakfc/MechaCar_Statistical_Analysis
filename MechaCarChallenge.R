library(dplyr)
df <- read.csv("MechaCar_mpg.csv")

# Perform linear regression model
linear_regression <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df)
summary(linear_regression)

# Import and read the suspension coil csv
df2 <- read.csv("Suspension_Coil.csv")

# Create summary table for the mean, median, variance and standard deviation of the suspension coil's PSI
total_summary <- df2 %>% 
  summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")
total_summary

# Create a lot summary that groups each manufacturing group
lot_summary <- df2 %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")
lot_summary

# Perform a t-test to determine is PSI across manufacturing groups is statistically diferent from the population mean (1500)
t.test(x = df2$PSI, mu = 1500)

# T-test per lot group
t.test(subset(df2, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(df2, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(df2, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
