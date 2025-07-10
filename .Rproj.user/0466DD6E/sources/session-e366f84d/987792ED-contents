library(ggplot2)
data = read.csv("pricequotes.csv")
data
print(summary(data))

n_barry <- length(data$Barry.Price)
n_mary <- length(data$Mary.Price)

sd_barry <- sd(data$Barry.Price)
sd_mary <- sd(data$Mary.Price)

se_barry <- sd_barry/sqrt(n_barry)
se_mary <- sd_marry/sqrt(n_mary)

cat("Mary: SD=",round(sd_marry,2)," | SE = ",round(se_mary,2))
cat("Barry: SD=",round(sd_barry,2)," | SE = ",round(se_barry,2))

ggplot(data,aes(x="Barry",y=Barry.Price))+
    geom_boxplot(fill="skyblue")+
    geom_boxplot(aes(x="Mary",y=Mary.Price),fill="lightgreen")+
    labs(title="BoxPlot of Price QUotes",x="Person",y="Price")

