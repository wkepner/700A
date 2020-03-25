#EXERCISE 1
3^7
choose(22,17)
factorial(8)
sqrt(pi)

#EXERCISE 2
v1 <- c(3, 7, -4, 0) 
v1
v2<- c(1:50)
v3 <- c(3, 7, -4, 0, 1:50)
v3 <- c(v1,v2)
v4 <- seq(0,2,.1)
sum(v1)
sum(v2)
v5 <- c(10:20)
prod(v5)
#the product is equal to 6.704426e+12


#EXERCISE 3

v6 <- c(30:200)
sum(v6)
# the sum is equal to 19665

v7 <- function(x,y) x*sum(1/(1:y))
v7(1,100)
# the sum is equal to 5.187378


v8 <- function(y) sum((exp(-1:-y))*(1:y))
v8(100)
#the sum is 0.9206736

v9 <- function(x,y) prod(x*(1:y)^2-(1:y))
v9(2,100)

#the product is INFINITE!

#EXERCISE 4:

#matrix(1:9, nrow=3, byrow=TRUE)

m1<-matrix(1:6, nrow=2)
class(m1)
m1

m2<- matrix(rep(0,6), nrow=2)

m3<- matrix(rep(1,6), nrow=2)

m4<- rbind(2:4,7:9)
m4

m5<- rbind(c(1,0,0,0),c(0,1,0,0),c(0,0,1,0),c(0,0,0,1))
m5

m55<- diag(1,4)
m55

m6<- rbind(c(0,1,1,1), c(1,0,1,1),c(1,1,0,1),c(1,1,1,0))
m6

m7<- cbind(c(1,1,1,1),c(4,4,4,4),c(9,9,9,9),c(16,16,16,16))
m7

m77 <- 1:4
m77 <- matrix((m77^2),4,4,byrow=TRUE)
m77


#EXERCISE 5

?signif

m8 <- 1.55555
signif(m8, digits=3)

?expm1
expm1(1)

m9 <- c(1:100)^8
signif(m9, digits=3)

m11 <- c(10^(-2:-18))
exp(m11)-1

m10 <- c(10^(-2:-18))
expm1(m10)

#I trust the expm1 function because its more steady and the last few numbers are all 0s in the other one
