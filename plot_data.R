#Script to plot the logistic growth data (plotting)

#download the data file that is being analysed
growth_data <- read.csv("experiment.csv")

#installing packages required for analysis
install.packages("ggplot2")
library(ggplot2)


#plotting the logistic model of the data
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (min)") +
  
  ylab("N (#cells)") +
  
  ggtitle("Logistic Model Plot of Data") +

  xlab("time (min)") +
  
  ylab("N (# cells)") +
  
  theme_bw()

#the graph shows after a lag phase at the start of the time period, the bacteria then grow exponentially before plateauing out at around the 2000 time point


#semilog-plot of logistic model

#plotting the model with logged y axis (number of cells)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("time (min)") +
  
  ylab("Log10(N)") +
  
  ggtitle("Semilog-plot of logistic model") +

  xlab("time (min)") +
  
  ylab("Log10(N)") +
  
  scale_y_continuous(trans='log10')

#the semi-logged plot shows linear relationship between time and logged number of cells at earlier time point then a constant state


#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()


