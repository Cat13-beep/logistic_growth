#Script to plot data and model

#downloading the data
growth_data <- read.csv("experiment.csv")

#downloading packages required
library(ggplot2)

#plotting a logistic graph with the parameters from the data set being analysed
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

#setting the parameters
N0 <- 879
  
r <-  0.0101
  
K <- 5.993e+10

#plotting data points and logistic model

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  xlab("Time (min)") +
  
  ylab("N (#cells)") +
  
  ggtitle("Logistic model fitted with the data points") +
  
  geom_point()

#Plotting the data and logistic model using the semi-logged version

ggplot(aes(t,N), data = growth_data) +
  
geom_function(fun=logistic_fun, colour="red") +
  
xlab("Time (min)") +
  
ylab("Log10(N)") +

ggtitle("Semi-logged logistic model with our data points") +
  
geom_point() +
  
scale_y_continuous(trans='log10')


#save the packages needed in a file 
sink(file = "package-versions.txt")
sessionInfo()
sink()


