# Consider the Price quotes dataset and perform the following using the JMP Pro tool. 

# 1. Generate the Summary statistics of the price quotes from Mary and Barry and 
# interpret the results. 
# 2. The standard deviation of Mary’s price quotes is $11.05. The standard error of 
# the mean of Mary’s price quotes is $3.19. Both are measures of variability. 
# a. distinguish between these two numbers on the basis of how they are calculated and 
# what they mean. 
# b. Provide an interpretation of each number.

library(ggplot2)
data = read.csv("pricequotes.csv")
data
print(summary(data))

n_barry <- length(data$Barry.Price)
n_mary <- length(data$Mary.Price)

sd_barry <- sd(data$Barry.Price)
sd_mary <- sd(data$Mary.Price)

se_barry <- sd_barry/sqrt(n_barry)
se_mary <- sd_mary/sqrt(n_mary)

cat("Mary: SD=",round(sd_mary,2)," | SE = ",round(se_mary,2))
cat("Barry: SD=",round(sd_barry,2)," | SE = ",round(se_barry,2))

ggplot(data,aes(x="Barry",y=Barry.Price))+
    geom_boxplot(fill="skyblue")+
    geom_boxplot(aes(x="Mary",y=Mary.Price),fill="lightgreen")+
    labs(title="BoxPlot of Price QUotes",x="Person",y="Price")