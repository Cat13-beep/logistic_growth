#Script to plot the logistic growth data (plotting)

<<<<<<< HEAD
#download the data file that is being analysed
growth_data <- read.csv("experiment.csv")

#installing packages required for analysis
install.packages("ggplot2")
library(ggplot2)

#Plotting the logistic model graph
=======
#uploading the data
growth_data <- read.csv("experiment.csv")

#installing package required for analysis
install.packages("ggplot2")
library(ggplot2)


#plotting the logistic model of the data
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
<<<<<<< HEAD
  xlab("Time (min)") +
  
  ylab("N (#cells)") +
  
  ggtitle("Logistic Model plot of data") +
=======
  xlab("time") +
  
  ylab("N (# cells)") +
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b
  
  theme_bw()
#the graph shows after a lag phase at the start of the time period, the bacteria then grow exponentially before plateauing out at around 2000 time

<<<<<<< HEAD

#semilog-plot of logistic model
=======
#plotting the model with logged y axis (number of cells)
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
<<<<<<< HEAD
  xlab("time (min)") +
  
  ylab("Log10(N)") +
  
  ggtitle("Semilog-plot of logistic model") +
=======
  xlab("time") +
  
  ylab("Log10(N)") +
>>>>>>> 75621b7d3c0b372220fe6eeb8a5e7f76c002e62b
  
  scale_y_continuous(trans='log10')
#the semi-logged plot shows linear relationship between time and logged number of cells at earlier time point then a constant state




#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()


