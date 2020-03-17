
install.packages("ggplot2", dependencies = TRUE) 
install.packages("plyr")
install.packages("ggthemes") 
install.packages("reshape2")

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(size=3) 
summary(myplot)

data(iris)
attach(iris)

plot(myplot)

ggplot(data=iris, aes(Sepal.Length,Sepal.Width,color=Species))+geom_point(size=3)
ggplot(data=iris, aes(Sepal.Length,Sepal.Width,color=Petal.Width))+geom_point(aes(shape=Species,size=3))


# Make a small sample of the diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

data(diamonds)
attach(diamonds)
ggplot(data=d2, aes(carat,price,color=color))+geom_point(size=3)

library(MASS)                                                                              
data("birthwt")
attach(birthwt)
ggplot(birthwt, aes(factor(race),bwt))+geom_boxplot()+facet_grid(race~.)
ggplot(iris,aes(Sepal.Length,Sepal.Width,color=Species)) +geom_point(size=2) + facet_grid(Species~.)
ggplot(iris,aes(Sepal.Length,Sepal.Width,color=Species)) +geom_point(size=2) + facet_grid(.~Species)

#Exercise 21

library(ggplot2)
ggplot(data = FiveYearData, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() +
  facet_wrap( ~ country) +
  ggtitle("Figure 1") +
  xlab("Year")+
  ylab("Life Expectancy")+
  scale_colour_discrete("Continent")

#Exercise 22

data(diamonds)
myplot<-ggplot(diamonds,aes(carat,price,color=clarity))+
  geom_point(alpha=0.1)+geom_smooth(se=F)+
  theme_minimal()
  

