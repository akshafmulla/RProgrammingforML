#Difference between data frames and Matrices.

#Matrix
# 1. Matrix consist of data of similar type i.e. a matrix can be either numeric, double or character. it can never be a mixture of all the elements.
# 2. It can have row names and col names. 
#eg : Here v is a Matrix. 
v1<-c(1,2,3,4)
v2 <- c(5,6,7,8)
v3 <- c(9,10,11,12)
v <- rbind(v1,v2,v3)
v

#Data frames:
# 1. DF consist of data which is not restricted to any type. This data is similar to the excel sheet data which can have a column of Names as well as a column of Age representing both Character and Numeric in the same frame.
# 2. It will definetly have col names.
# 3. There is another speciallity of DF which is called as "Factors" which categorizes each column. This is something that R analyses out of a DF based on the data provided.
#eg: Here data is a DF.
setwd("D:\\Study\\R Programming")
data <- read.csv("DemographicData.csv")
data
