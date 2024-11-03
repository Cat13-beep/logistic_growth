#Script to estimate the model parameters using a linear approximation

#library(dplyr)

growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

#Putting in a small value for time- 600

library(dplyr)

data_subset1 <- growth_data %>% filter(t<600) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K 
#putting in a high value of T (2100), which would reflect when population is at carrying capacity

data_subset2 <- growth_data %>% filter(t>2100)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

#Therefore from these models I can estimate the paramters of the bacteria growth model
#N0 (bacteria population size at the time 0) is 6.87 given from intercept estimate in the case 1 above, but then do e^value to get out of log10
#r (the intrinsic growth rate of the bacteria) is 0.0101 given as as estimate for t in case 1 above
#K (carrying capacity) is 5.993e+10, given as an estimate for the intercept in the model for case 2 above