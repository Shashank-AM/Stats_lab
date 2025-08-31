# Consider the Improving Patient Satisfaction dataset and perform the following using the 
# JMP Pro tool. 

# 1. Analyze the Patient Satisfaction Data using the summary statistics. 
# 2. Open the Fitness.jmp dataset in the JMP Sample Data directory (under Help > 
#                                                                     Sample Data Library). 
# a. Create a scatterplot matrix, and find the correlations among the continuous variables 
# following the directions provided in this case. 
# b. Which pair of variables has the strongest positive correlation (and what is the value)? 
#   c. Which pair of variables has the strongest negative correlation (and what is the value)? 
#   d. What does this negative correlation indicate?

patient = read.csv("patient-feedback.csv")
fitness = read.csv("CardioGoodFitness.csv")

patient
fitness

summary(patient)


fitness_cont <- fitness[c("Age", "Usage", "Fitness", "Income", "Miles")]
pairs(fitness_cont,main="ScatterPlot Matrix - Fitness Data")

cor_matrix <- cor(fitness_cont)
print(cor_matrix)

cor_values <- cor_matrix[upper.tri(cor_matrix)]
max_cor <- max(cor_values)
min_cor <- min(cor_values)

which(cor_matrix == max_cor, arr.ind = TRUE)
which(cor_matrix == min_cor, arr.ind = TRUE)



