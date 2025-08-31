# Select any dataset from the JMP Pro tool and perform ANOVA test and Non-Parametric 
# tests (The Mann Whitney test and The Kruskal-Wallis test). Interpret the results and 
# draw inferences.

mtcars

mtcars$cyl <- as.factor(mtcars$cyl)

anova_result = aov(mpg~cyl, data=mtcars)
summary(anova_result)

wilcox.test(mpg~cyl,data=subset(mtcars,cyl %in% c(4,6)))

kruskal.test(mpg~cyl,data=mtcars)
