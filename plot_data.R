#Script to plot the logistic growth data (plotting)

#uploading the data
growth_data <- read.csv("experiment.csv")

#installing package required for analysis
install.packages("ggplot2")
library(ggplot2)


#plotting the logistic model of the data
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("time") +
  
  ylab("N (# cells)") +
  
  theme_bw()
#the graph shows after a lag phase at the start of the time period, the bacteria then grow exponentially before plateauing out at around 2000 time

#plotting the model with logged y axis (number of cells)
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("time") +
  
  ylab("Log10(N)") +
  
  scale_y_continuous(trans='log10')
#the semi-logged plot shows linear relationship between time and logged number of cells at earlier time point then a constant state



