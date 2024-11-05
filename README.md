Question 1) This analysis is based on estimating parameters relating to the growth of a bacteria population in media- the parameters that are being discovered include the initial population size of the bacteria (N0), rate of growth (r), and the carrying capacity (K). I am using the experiment.csv data file and the different, edited, code that I used for the analysis are in the fit_linear_model.R, plot_data.R, and plot_data_and_model.R files in this logistic_growth repository. 

I used the differential equation describing logistic growth to find out these three parameters. When K is much greater than N0 and t is small the graph has exponential properties and the growth can be represented by an exponential equation. Additionally, for high values of T, the population size of the bacteria is at carrying capacity. These generalities in the growth of bacteria mean that it is possible to estimate the three parameter values (N0, r, and K) using linear approximations. Rearranging the exponential equation in the case when K is greater than N0 and t is small gives the linear regression equation ln(N)= ln(N0)+rt. Therefore, from the output of the regression analysis, the gradient estimate will be ln(N0) (from which N0 can be determined) and r is the estimate for the gradient. In the second case described above K can be determined by putting a large value of T into the regression input, the size of the population at this high value of T will be the carrying capacity (K). 

Therefore, 




I used observations about the models to get estimates on three parameters. Using the experiment.csv, I found that the parameters are... N0 (bacteria population size at the time 0) is 6.87 (963 if removed from the log) from the intercept estimate in case 1. #r (the intrinsic growth rate of the bacteria) is 0.0101 given as an estimate for t in case 1. K (carrying capacity) is 5.993e+10, given as an estimate for the intercept in the model for case 2. The graph produced with these parameters looks like a logistic model.

Question 2)Population size assuming exponential growth at a certain time can be done using the exponential model equation- N(t)= N0e^rt using my parameters this is 963e^0.0101*4980 = 6.7*10^24, compared to the logistic model this is much larger, as the logistic model plateaus off at high t values and therefore predicts the population size of bacteria at this time would be the carrying capacity mentioned above (5.993e+10). 

Question 3) Comparing the exponential and logistic graphs side by side
