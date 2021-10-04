# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
A multiple linear regression model was applied to all the variables in order to see which variable have a more significant impact with mpg.
<img src="./Resources/deliverable_1.PNG " alt="Summary df" width="900"/>
* As shown in the table, the variables/coefficients that are unlikely to provide random amounts of variance are: <code>Intercept</code>,  <code>vehicle_length</code> and  <code>ground_clearance</code>. This can be further shown in the codes below with the triple asterisks that represent a significance of zero.
* The slope of our multiple linear regression model is different from zero since the p-value obtained from the model has a value of <code>5.35e-11</code> hence its smaller than our preset significance level of 0.05. Therefore, the null hypothesis is rejected.
* The multiple linear regression model shows that there is a relationship between mpg and sother variables in the model and has an R squared value of <code>0.7149</code> which means that 71.49% of our dependent variable (mpg) variability is explained using this model.  
