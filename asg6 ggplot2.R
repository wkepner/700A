library(ggplot2)

library(RColorBrewer)
display.brewer.all()

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
data(diamonds)
attach(diamonds)
ggplot(data=d2, aes(clarity,fill=cut))+
  geom_bar(stat ="count", position ="dodge")
#count is like frequency, and dodge makes the histograms into three instead of 1 bar

data(faithful)
attach(faithful)

#this produces like a distribution curve of the variable waiting

ggplot(faithful,aes(waiting))+geom_density()+
  geom_density(fill="blue", alpha=.1)

#alternative way to do it without using geom density
ggplot(faithful,aes(waiting))+
  geom_line(stat="density")

#Smoothers this creates a linear model line through the points

myplot<-
  ggplot(iris,aes(Sepal.Length,Sepal.Width, color=Species))+
  geom_point(aes(shape=Species), size=2)+
  geom_smooth(method = "lm")+
  facet_grid(.~Species)+
  theme_excel()

twoplot<-myplot(fi,title="Fig1")
twoplotits gr