# Clear Workspace
rm(list=ls())

############################################################
## Data structures ##
############################################################

# Accessing vector elements

vec <- c("a", "b", "c", "d", "e", "f")
vec

vec[1]

vec[c(2,4)]

vec <- c(1,3,4,5,6,7,11,13,56,34,25)
vec

vec[-1]

vec[-c(2,4)]

vec[-c(2:6)]

length(vec)

vec[-c(8)]

# Vector operations

vec1 <- c(2, 4, 0.89, 15.86, 26, 8, 9.7, 5.90, 6.34, 3)
vec2 <- c(5, 5, 10)

vec1+vec2
sum(vec1)
log(vec1)
round(vec1, digits=0)
floor(vec1)
sqrt(vec1)
round(sqrt(vec1))

max(vec1)
min(vec1)

range(vec1)
prod(vec1)

mean(vec1)
sort(vec1)
sort(vec1,decreasing=TRUE)

#---------------------------------------------------

# Generating regular sequences
1:30
2*1:15
n <- 10
1:n-1
1:(n-1)

x <- 1:5            #ascending
x

y <- 5:1            #descending
y

index1 <- seq(from = 1, to = 30)
index1

index2 <- seq(from = 1, to = 30, by = 2.5)
index2

index3 <- seq(from = 5 , length = 11)
index3

index4 <- seq(7, by=3, along=index3)
index4

R1  <- rep(c(7,10,9), times=5)
R1
R2  <-  rep(1:3, each = 5)
R2

# Missing values
m1 <- c(1, 2, NA, 10, 3)
is.na(m1)
is.nan(m1)

m2 <- c(1, 2, NaN, NA, 4)
is.na(m2)
is.nan(m2)

#---------------------------------------------------

# matrix

v <- c(1,2,3,4)
v

foo <-matrix (v, ncol = 2, nrow = 2)
foo

foo <-matrix (v, ncol = 2, nrow = 2, byrow = T)
foo

foo <-matrix (v, ncol = 2, nrow = 5)
foo

foo <-matrix (v, ncol = 5, nrow = 2)
foo

foo <-matrix (v, ncol = 5, nrow = 2, byrow = T)
foo

#accessing matrix elements

mat <- matrix (c(1:4), nrow = 2, ncol = 2)
mat

# mat[row, col]

mat[,1] # 1st col
mat[1,]
mat[2,]
mat[,2]

x <- matrix(c(1:9), nrow = 3, byrow = T)
x

x[1:3,2:4]
x[3,5]

x[3,3]
x[1:2,2:3]

# using cbind() & rbind() function
cbind(1:3, 4:6)
rbind(1:3, 4:6)
rbind(1:2, 1:3)

# using dim() function
a  <-  1:15
a

dim(a)  <-  c(3,5)
a
class(a)

rm(a)
a  <-  1:15
a

dim(a)  <-  c(3,5,2)
a
class(a)

#---------------------------------------------------

# ARRAYS
arr1 <- array(c(2:17), dim=c(2,4))
arr1 

arr2 <- array(c(2:17), dim=c(2,4,2))
arr2

#---------------------------------------------------

# LISTS

list1 <- c(rep(1,11), rep(2,17))

list2 <- c(23,45,67,76,-8,3.5,2.19,4)

lists <- list(list1, list2, "An example")
lists

lists <- list(arr1, arr2, "An example")
lists

lists <- list(mat, foo, "An example")
lists

lists <- list(mat, arr2, "An example")
lists

#---------------------------------------------

# Create a dataframe

emp_id <- c(1:5)
emp_name <-  c("Rick", "Dan", "Mike", "Ryan", "Gary")
salary = c(623.5, 515.6, 729.0, 843.25, 450)

emp.data <- data.frame(emp_id, emp_name, salary)
emp.data

emp.data$emp_id
emp.data$emp_name
emp.data$salary

emp.data[,1]
emp.data[1,]
emp.data[,3]
emp.data[2:3, 2:3]

emp.data <- cbind(emp_id,emp_name,salary)
emp.data

#---------------------------------------------------------------------

#Factors

#Factors are the data objects which are used to categorize the data and store it as levels. 
#They can store both strings and integers. They are useful in the columns which have a 
#limited number of unique values. Like "Male, "Female" and True, False etc. 
#They are useful in data analysis for statistical modeling

gender <- c('Male', "Female", "Female", "Male")

status <- c("Poor", "Improved", "Outstanding", "Poor", "Excellent")

factor_gender <- factor(gender)
factor_gender

factor_status <- factor(status)
factor_status

contrasts(factor_status)
contrasts(factor_gender)

# Create a vector as input.

data <- c("East","West","East","North","North","East","West","West","West","East",
          "North")
is.factor(data)

# Apply the factor function.
newdata <- factor(data)

is.factor(newdata)

############################################################
## importing data from files ##
############################################################

#--------------------------------------------------------
# Importing .txt file 

# setwd("C:/Users/DELL 1/Desktop/Codes")
setwd("C:/Users/DELL 1/Desktop/RCodes")

# Multi line comment and uncomment - ctrl+shift+c

RSC <- read.table("RetailScoreData.txt") # or path file
View(RSC)

RSC <- read.table("RetailScoreData.txt", header = TRUE) 
View(RSC)

RSC <- read.table("RetailScoreData.txt", header = TRUE, sep = ",") 
View(RSC)

hills <- read.table("hills.txt", header = TRUE, sep = ",") 
View(hills)

hills <- read.table("hills.txt", header = TRUE, sep = "\t") #\t - tab
View(hills)

RSC <- read.csv("RetailScoreData.csv", header = TRUE)
View(RSC)

# tools >>> Install Packages >>>> write the package name + (dependencies = T)

# install.packages("readxl", dependencies = T)
library(readxl)

# tools >>> Install Packages >>>> write the package name + (dependencies = T)

RSC <- read_excel("RetailScoreData.xlsx")
View(RSC)