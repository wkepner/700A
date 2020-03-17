heartbeats<-read.table("heartbeats.txt", header=T)
attach(heartbeats)
boxplot(wghtcls)     
str(wghtcls)
summary(wghtcls)

#Exercise #16
L<-split(heartbeats,heartbeats$wghtcls)

op<-par(mfrow=c(1,3)) # this creates 1 mfrows of 3 maps
boxplot(wghtincr~treatment, data=L[[1]], ylim=c(-300,200), col=c("white","lightgrey"), notch=TRUE, sub="Birth weight below 3000G", names=c("Control","Heartbeat"))   
boxplot(wghtincr~treatment, data=L[[2]], ylim=c(-300,200), col=c("white","lightgrey"), notch=TRUE, sub= "Birth weight between 3000g and 3500g", names=c("Control","Heartbeat"))   
boxplot(wghtincr~treatment, data=L[[3]], ylim=c(-300,200), col=c("white","lightgrey"), notch=TRUE, sub="Birth weight above 3500G", names=c("Control","Heartbeat"))   
title("Weight increase of newborns after hearing heartbeat", outer=TRUE, cex=1.5, line=-1)


#Exercise 17: The normal distribution is very important. So let's study it.

plot(dnorm, -3, 3)


#Exercise 18: There are many pre-defined data sets you can use in R. The data frame chickwts is
#one of those. It contains measured growth rates of chickens in dependence of various feed
#supplements.

ck<-split(chickwts,feed)
attach(chickwts)

boxplot(weight~feed,data=ck["casein"],ylab="weight after six weeks(grams)", col=c("darkgrey","darkgrey","darkgrey","lightgrey","lightgrey","white"))
title(main="chikwts data")


#Exercise 19: The data frame cars gives the distance taken to stop from a certain speed. Note that
#the data were recorded in the 1920s.

data(cars)
attach(cars)
plot(cars, axes="false")
abline(-17.5,4)
title(main="distance taken for a car to stop at a certain speed", 
      sub="distance as a function of speed")

axis(side=1, at=pretty(speed), labels=T, line=1)
axis(side=2, at=pretty(dist),labels=T, line=1)
legend(3.5,118,legend="4 speed - 17",lwd=3)
locator(1)
