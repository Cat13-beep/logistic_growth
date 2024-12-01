#Script to estimate the model parameters using a linear approximation

#load packages required
library(dplyr)

#download data that is being analysed 
growth_data <- read.csv("experiment.csv")

<<<<<<< HEAD
#Case 1. K >> N0, t is small- to estimate N0 and r
=======
#Case 1. K >> N0, t is small

#Putting in a small value for time- 600

library(dplyr)
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b

data_subset1 <- growth_data %>% filter(t<600) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

<<<<<<< HEAD
#Case 2. N(t) = K- to estimate K
=======
#Case 2. N(t) = K 
#putting in a high value of T (2100), which would reflect when population is at carrying capacity
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b

data_subset2 <- growth_data %>% filter(t>2100)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

<<<<<<< HEAD
#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()
=======
#Therefore from these models I can estimate the paramters of the bacteria growth model
#N0 (bacteria population size at the time 0) is 6.87 given from intercept estimate in the case 1 above, but then do e^value to get out of log10
#r (the intrinsic growth rate of the bacteria) is 0.0101 given as as estimate for t in case 1 above
#K (carrying capacity) is 5.993e+10, given as an estimate for the intercept in the model for case 2 above
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b
