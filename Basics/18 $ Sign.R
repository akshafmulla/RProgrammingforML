# $ sign is used to fetch a particular data. It is similar to x[rowname,colname] function. It works on Data frames only but not on Matrices.

#Data Frame
setwd("D:\\Study\\R Programming\\Basics of R\\Exercise Data")
data <- read.csv("DemographicData.csv")
data

#Matrix
v1<-c(1,2,3,4)
v2 <- c(5,6,7,8)
v3 <- c(9,10,11,12)
v <- rbind(v1,v2,v3)
v

#even if we do v$v1 it will give an error.Hence it works only on data frames and not on Matrices.
#eg.  if we need to fetch the value of a particular row, we would use the traditional method:

data[,"Country.Name"]

#we can use $ sign for the same purpose.
data$Country.Name

# $ is used because it is more convinient as compared to the traditional approach.