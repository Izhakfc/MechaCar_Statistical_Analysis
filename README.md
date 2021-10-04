# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
A multiple linear regression model was applied to all the variables in order to see which variable have a more significant impact with mpg.
<img src="./Resources/deliverable_1.PNG " alt="Summary df" width="900"/>
* As shown in the table, the variables/coefficients that are unlikely to provide random amounts of variance are: <code>Intercept</code>,  <code>vehicle_length</code> and  <code>ground_clearance</code>. This can be further shown in the codes below with the triple asterisks that represent a significance of zero.
* The slope of our multiple linear regression model is different from zero since the p-value obtained from the model has a value of <code>5.35e-11</code> hence its smaller than our preset significance level of 0.05. Therefore, the null hypothesis is rejected.
* The multiple linear regression model shows that there is a relationship between mpg and sother variables in the model and has an R squared value of <code>0.7149</code> which means that 71.49% of our dependent variable (mpg) variability is explained using this model.  

## Summary Statistics on Suspension Coils
The current manufacturing data shows that the variance of the suspension coils in general have a value of <code>62.2935</code> which does not exceed 100 pounds per square inch limit that was previously defined. However, after each lot was analyzed separately we observe that the Lots 1 and 2 are under the limits of the variance, but in Lot 3 we have a variance of <code>170</code> which exceeds our previously define limit and actually contributes a lot in the value of the overall variance of all the lots, so this manufactured lots needs to be reviewed.
### Total Summary
<img src="./Resources/total_summary.PNG " alt="Summary df" width="900"/>

### Manufacturing Lot Summary
<img src="./Resources/lot_summary.PNG " alt="Summary df" width="900"/>

## T-Tests on Suspension Coils
### Population
<img src="./Resources/t_test.PNG " alt="Summary df" width="900"/>

### Lot 1
<img src="./Resources/t_test_lot1.PNG " alt="Summary df" width="900"/>

### Lot 2
<img src="./Resources/t_test_lot2.PNG " alt="Summary df" width="900"/>

### Lot 3
<img src="./Resources/t_test_lo3.PNG " alt="Summary df" width="900"/>

Looking at the results of the previous t-tests we can infer the next things: 
* From the entire population t-test we obtained a p-value of <code>0.06028</code> that is a biger value that our predefined alpha of 0.05, therefore, we fail to reject the null hypothesis meaning that the true mean of the populations is 1500.
* From the Lot 1 t-test we obtanied a p-value of <code>1</code>, meaning that the lot 1 population mean is actually exactly 1500.
* From the Lot 2 t-test we obtained a p-value of <code>0.6072</code> which still fails to reject the null hypothesis, therefore the mean of the lot 2 population is 1500.
* From the Lot 3 t-test we obtained a p-value of <code>0.04168</code> being lower that our defined alpha, therefore we reject the null hypothesis and accept the alternative hypothesis of "True mean is not equal to 1500" and the estimate mean is around <code>1496.14</code>.

