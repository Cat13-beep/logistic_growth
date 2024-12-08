#read file of the data being used

growth_data <- read.csv("experiment.csv")

#download packages required
library(ggplot2)

#Logistic model formation- similar to what was done in plot_data_and_model.R

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 961.986

r <-  0.0101

K <- 5.993e+10

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") 

#Exponential graph formation

exponential_fun <- function(t) {
  
  N <- (N0*exp(r*t))
  
  return(N)
  
}

N0 <- 961.986
r <-  0.0101

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=exponential_fun, colour="blue") +
  
  geom_point()

#combining the two graphs into one 

ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_function(fun=exponential_fun, colour="blue") +
  xlab("Time (mins)") +
  ylab("N (#cells)") +
  ggtitle("Comparison of Logistic Model and Exponential Model") +
  theme(plot.title = element_text(hjust = 0.5)) +
  scale_x_continuous(limits = c(0, 6000)) +
  scale_y_continuous(limits = c(0, 1e+11))

#saving the packages used 
sink(file = "package-versions.txt")
sessionInfo()
sink()
