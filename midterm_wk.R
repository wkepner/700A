#practice

f1<-function(x,y){
  r<-if (x==1) {x+1} else {x+2; y+2}
  r
}


f1(2,1)


x<-0
for(i in 1:100){if (i==3){next};if(i==13){print (13)};if(i==23){print(23)};x<-x+1}


y<-9; j<-16
while ( y < 20 & j < 50 ) {y<-y+1;j<-j+20}


z<-1.618
repeat{ z<- z*2; if (z>100) {break}; print(z)}


circ.math<-function(r){
  area<-pi*r^2
  circ<-2*pi*r
  return(data.frame(Area=area,Circumference=circ))
}
circ.math(x)

x<-1:5



