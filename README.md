**Question 1)**

<ins>Analysis information:</ins> This data analysis is based on estimating parameters relating to the growth of a bacteria population in media- the parameters that are being investigated include the initial population size of the bacteria (N0), rate of growth (r), and the carrying capacity (K). In addition, the data is fitted to logistic and exponential models to see which describes the data best. I am using the experiment.csv data file, from the Open Science Framework's website- logistic growth data (also in my repo). This data includes results from a single, simulated bacteria growth experiment. I edited the code for the analysis in the fit_linear_model.R, plot_data.R, and plot_data_and_model.R files in this logistic_growth repository. 
 
I used the differential equation describing logistic growth to find out the three parameters under investigation. When K is much greater than N0 and t is small (case 1) the graph has exponential properties and an exponential equation can represent the growth. Additionally, for high values of T, the population size of the bacteria is at carrying capacity (case 2). These assumptions of the growth of bacteria mean that it is possible to estimate the three parameter values (N0, r, and K) using linear approximations. Rearranging an exponential equation, N(t)=N0e^rt, for case 1 gives the linear regression equation ln(N)= ln(N0)+rt. Therefore, from the regression analysis output, the intercept estimate will be ln(N0) (from which N0 can be determined) and r is the estimate for the gradient. In case 2 described above K can be determined by putting a large value of T into the regression input, the size of the population at this high value of T will be the carrying capacity (K). 

<ins>Results:</ins> Therefore, in my analysis, I started by plotting the data (using the code from plot_data.R), the data shows typical trends for logistic data. The first graph with time on the x-axis and  the number of cells on the y-axis shows a small population of bacteria until about the 1500 time point, then there is rapid population growth until about the time point 2000, where the growth rate slows and the population size plateaus. The second semi-logged graph (with a logged number of cells on the y-axis) shows linear growth from time points 0 to 2000, at which point the population size plateaus. 

To fit the linear model to the data part of the analysis I first inputted a small value of t (600)- the output of the linear regression estimate for the intercept is 6.869 (this value is ln(N0)), to get just N0 estimate to take the exponent- 961.986 (3. d.p). The estimate for the gradient is 0.0101 from this same regression output, which, for the reasons described above, relates to the r-value. For the next regression (case 2), I used a large value of t, within the region of the graph where there is a plateau- 2100. The estimate for the intercept (the prediction of the carrying capacity) is 5.993e^10 (5.993*10^10). Therefore my parameter estimates are N0= 961.986, r= 0.0101, and k= 5.993e+10.

For the final bit of analysis (plot_data_and_model.R) the model with my estimates for the parameters produces a graph that is the correct shape of the logistic model and runs through the points from the data set, the red line crosses through these points. This same outcome is seen, that the data points and the logistic model are in the same shape (as with the first graph) on the semi-logged graph. As the data points and logistic model follow a similar shape it suggests the values I have found for the estimates of these parameters are correct.

**Question 2)**

Population size at a certain time point (4980) assuming exponential growth can be done using the exponential model equation- N(t)= N0e^rt using my parameters for N0 and r. This creates the equation 961.986e^0.0101*4980 = 6.719*10^24 bacterial population size. Compared to the logistic model this is much larger, as the logistic model plateaus off at high t values, which is better as it is a more realistic picture of bacterial growth as they have limited space and nutrients. Therefore, the predicted population size of bacteria by the logistic model at this time would be the carrying capacity mentioned above (5.993e+10 bacteria). 

**Question 3)**

Comparing the exponential and logistic graphs side by side, I used similar code to the one already in the R file and adapted it so it showed exponential instead of the logistic model- using the same model parameters that are required for an exponential model- N0 and r. The code that I used is in a newly created folder in this logistic_growth repo called question 3code.R. The graph that this produced, which allows comparison between the logistic and exponential model is here below and in the repo folder Question 3 image.png.

 <p align="center">
     <img src="https://github.com/Cat13-beep/logistic_growth/blob/main/Question%203%20image.png" width"200" height"100">
  </p>
