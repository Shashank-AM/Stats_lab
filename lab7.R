#Consider the Fish Prices dataset and perform the following using the JMP Pro tool. 
#
#1. Use the DASL Fish Prices data to investigate whether there is evidence that 
#overfishing occurred from 1970 to 1980. 
#2. Perform a paired t-test for Fish price dataset. Interpret the results, and describe 
#the change with confidence intervals. 

data = read.csv("fishstory.csv")
data

t.test(data$Price1970,data$Price1980,paired=TRUE)

mean(data$Price1980 - data$Price1970)
