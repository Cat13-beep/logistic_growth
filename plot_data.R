#Script to plot the logistic growth data (plotting)

#download the data file that is being analysed
growth_data <- read.csv("experiment.csv")

#installing packages required for analysis
install.packages("ggplot2")
library(ggplot2)

#Plotting the logistic model graph
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (min)") +
  
  ylab("N (#cells)") +
  
  ggtitle("Logistic Model plot of data") +
  
  theme_bw()


#semilog-plot of logistic model
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("time (min)") +
  
  ylab("Log10(N)") +
  
  ggtitle("Semilog-plot of logistic model") +
  
  scale_y_continuous(trans='log10')


#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()


