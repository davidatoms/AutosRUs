# MechaCar Statistical Analysis
Using statistics, hypothesis testing, and the R computer programming language, I analyzed a series of datasets from the automotive industry. I will use linear regression in 'R' to predict miles per gallon for certain cars. 

## What I Learned/Achieved:
- How to load, clean up, and reshape datasets using tidyverse in R.
- How to visualize datasets with basic plots such as line, bar, and scatter plots ussing ggplot2.
- How to generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
- How to plot and identify distribution characteristics of a given dataset.
- How to formulate null and alternative hypothesis tests for a given data problem.
- How to implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
- How to implement and evaulate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
- How to implement and evaluate a chi-squared test for a given dataset.
- How to identify key characteristics of A/B and A/A testing.
- How to determine the most appropriate statistical test for a given hypothesis and dataset.

*Linear Regression to Predict MPG* : 

```Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mechacar_MPG_table)
```

Coefficients: 
|  (Intercept)  |  vehicle_length  |  vehicle_weight  |   spoiler_angle | ground_clearance  |   AWD  |
| -- | -- | -- | -- | -- | -- |
|    -1.040e+02   |      6.267e+00    |     1.245e-03    |     6.877e-02   |      3.546e+00     |   -3.411e+00 |

From the linear regression to predict effects on miles per gallon, we can see that the vehicle length and ground clearance have statistical significance on the miles per gallon of the vehicle. Both the vehicle length and ground clearance variables from the study are above the significance level set at .05%. By this, we can confidently say there is sufficient evidence to reject our null hypothesis.

*Summary Statistics on Suspension Coils* :
| Mean | Median | Variance | Standard Deviation |
| ---- | ------ | -------- | ------------------ |
| 1498.78 | 1500 | 62.2936 | 7.89 |

The MechaCar's suspension coil design specifications have certain thresholds on varaiance that it cannot exceed. For this test, the car's variance cannot exceed 100 PSI. From the graph, we see that this car does not exceed 100 PSI and we can therefore continue with the study.

_Manufacutring Lots Statistics_ :
| Manufacturing_Lot | Mean | Median | Variance | Standard Deviation |
| ----------------- | ---- | ------ | -------- | ------------------ |
| 1500 | 1500 | .980 | .990 |
| 1500 | 1500 | 7.47 | 2.73 |
| 1496 | 1498 | 170  | 13.0 |

*T-Tests on Suspension Coils* :
The analysis includes a T-Test on the PSI of the suspension coils across all lots of the data. The purpose is to determine if the PSI across all lots is statistically different than the population mean at 1500 PSI. We see that the p-value for the T-test is at .06 which is above .05. This means that the manufacturing lots are not different from the population mean, statistically. 

```
One Sample t-test

data:  suspension_coil_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1497.507 1500.053
sample estimates: - 
mean of x: 1498.78 
```
*T-Tests on Suspension Coils for all lots* :
The next part of the analysis was to apply the t-test to the rest of the lots in the population. Lot 1 and Lot 2's p-values were above the statistical test meaning that the PSI of suspension coils from those manufacturing lots were not statistically different from the population mean. Lot 3 had a p-value of approximately .04 meaning that the PSI of suspension coils from this lot statistically differ from the population mean. 

Lot 1:
```
One Sample t-test

data:  subset(suspension_coil_table, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x:  1500 
```
Lot 2:
```
One Sample t-test

data:  subset(suspension_coil_table, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x: 1500.2 
```
Lot 3: 
```
One Sample t-test

data:  subset(suspension_coil_table, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x: 1496.14 
```

## Study Design Prospects:
Competition with other cars can be applied with business intelligence about the consumers. MechaCar can use this data to compare their car designs with competitors and see how well it compares to their designs. If consumers are looking for cars with better fuel efficiency, then this could be a valuable piece of data for MechaCar to use in their advertising.

I believe that the information here would be beneficial for the Mecha Car company to use internally. If there is a production deadline, they can use the information to produce cars that are compliant and share this statistics with new customers. It can further be used to make the cars more fuel efficient. Just like we saw at the beginning of the course, there is a push for cars to become electric. Fuel consumption will then look different, but we can still use the data for weight and length to run further tests on the cars Mecha Cars will produce.
