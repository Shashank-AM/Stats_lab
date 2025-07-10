data()
mtcars

cor.test(mtcars$hp,mtcars$mpg,method="pearson")

library(ggplot2)

ggplot(data=mtcars,aes(sample=mpg))+
  stat_qq()+
  stat_qq_line()+
  labs(title = "Q-Q Plot for MPG",
       x = "THeoretical Quantiles",
       y = "MPG (sample)")+
  theme_minimal()

