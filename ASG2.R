data <- 90*1:100 - (1:100)^2 + 1000
?which
length(data)

data[1]
data[7]
data[length(data)]
data[100]

summary(data)

#What isthe first, the seventeenth and the last entry of the vector data?
  1089, 1581, 0
  
#What is the maximum of the vector data? At which index is the maximum attained?
3025, 45

summary(data)
which.max(data)
  
#Plot the vector data with plot(data)and visually confirm your last result.

plot(data)

#At which indices are the entries of data between 2000 and 2500?

between <- (data>=2000 & data <= 2500)
which(between)
#13 14 15 16 17 18 19 20 21 22 68 69 70 71 72 73 74 75 76 77

#Exercise 7: Define a new matrix m by

m <- matrix( 11:35, nrow=5, byrow=TRUE )



#What is the entry in the third row and forth column? 
#  = 24

#Briefly describe in words what m[2:4,3:5]returns. 

m[2:4,3:5]

m[3:4,1:2]

m[2:3,2:3]

m[1:5,1:2]
# the statement above returns the elements of the matrix m for the sequence 2-4 of the row and the elements for the sequence 3-5 for the columns

Calculate the matrix product of m with itself


