data <- read.csv('medicalmalpractice.csv')
data

summary(data$Amount)

library(ggplot2)

ggplot(data,aes(x=log10(Amount)))+
  geom_histogram(fill="lightblue",bins=20)+
  labs(title="Claim Amounts (log10 Scale)",
       x="log Amount",
       y="Frequency")

top3_specialty <- data %>%
                  count(Specialty,name="n") %>%
                  slice_max(n,n=3) %>%
                  pull(Specialty)

data %>%
  filter(Specialty %in% top3_specialty) %>%
ggplot(aes(x=Specialty,y=Amount,fill=Specialty))+
  geom_boxplot()+
  coord_flip()+
  theme_minimal()

total = length(data$Specialty)

spec_percent <- data %>%
  group_by(Specialty) %>%
  summarise(
    n=n(),
    pct = 100*n/total
    ) %>%
  filter(Specialty %in% c("Anesthesiology","Dermatology","Orthopedic Surgery"))

spec_percent

cor.test(data$Age,data$Amount)


