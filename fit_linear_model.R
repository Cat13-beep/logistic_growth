#Script to estimate the model parameters using a linear approximation

#load packages required
library(dplyr)

#download data that is being analysed 
growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small- to estimate N0 and r

data_subset1 <- growth_data %>% filter(t<600) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K- to estimate K

data_subset2 <- growth_data %>% filter(t>2100)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()
