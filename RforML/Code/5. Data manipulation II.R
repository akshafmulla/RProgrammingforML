rm(list=ls())

############################################################
## Data Manipulation ##
############################################################

###################################
## Apply Function  ##
###################################

data <- matrix(c(1:10, 21:30), nrow = 5, ncol = 4)
data

# Syntax of apply function : apply(data, margin, function)
# 2 margins. 1 = rows and 2 = columns

#average value of row
apply (data, 1, mean)

#average value of columns
apply (data, 2, mean)

#sd value of row
apply (data, 1, sd)

#sd value of columns
apply (data, 2, sd)

#median value of row
apply (data, 1, median)

#median value of columns
apply (data, 2, median)

#---------------------------
#lapply function

vec <- (1:4)
mat <- matrix(vec,2,2)
list_data <- list(vec, mat)

data <- list(x = 1:5, y = 6:10, z = 11:15)
data

lapply(data, mean)

lapply(data, median)

#lapply: input is list and my output is list

#---------------------------
#sapply function 

data <- list(x = 1:5, y = 6:10, z = 11:15)
data

lapply(data, mean)
sapply(data, mean)

# take list as input and return vector as output if the output has one value; 
# it will return matrix is the output has more than one value

sapply(data, range)

## array

# arrays are matrices in more than 2 dimensions
a <- array(1:24, dim = c(3,4,2))
a

vec1 <- c(5, 9, 3)
vec2 <- c(10,11,12,13,14,15,16)

result <- array(c(vec1,vec2), dim = c(3,4,2))
result

age <- c(23,33,28,21,20,19,34)
gender <- c("m","m","m","f","f","f","m")

tapply(age, gender, mean)

tapply(gender,age,mean)

#load the datasets
library(datasets)
data()

?mtcars
View(mtcars)

head(mtcars)

mtcars$cyl
mtcars$wt

str(mtcars)
tapply(mtcars$wt, mtcars$cyl, mean)

###################################
## Dplyr Package  ##
###################################

# install.packages("dplyr", dependencies = TRUE)
library(dplyr)

#select

select(mtcars, mpg, disp)
head(select(mtcars, mpg, disp))

head(select(mtcars, mpg:hp))

?iris

iris <- tbl_df(iris)
iris

select(iris, starts_with("Petal"))
select(iris, ends_with("Width"))
select(iris, contains("al"))
select(iris, matches(".t."))
select(iris, Petal.Length, Petal.Width)

#-------------------------------------------

#filter() enables easy filtering, zoom in, and zoom out of relevant data. 
#two types of filters are :
# simple filter 
filter(mtcars, cyl == 8)
filter(mtcars, cyl < 6)

# multiple criteria filter
filter(mtcars, cyl <6 & vs == 1)
filter(mtcars, cyl <6 | vs == 1)

#---------------------------------------------

# arrange function helps arrange the data in a specific order

# syntax is arrange(data, ordering column)

arrange(mtcars, desc(disp))

func <- arrange(mtcars, cyl, disp)
func

#---------------------------------------------

# mutate() helps add new variables to an existing data set. 

# syntax is mutate(data, new_column)

new_mtcars <- mutate(mtcars, my_custom_disp = disp/2)
(new_mtcars)

my_custom_disp = mtcars$disp/2

new_mtcars <- cbind(mtcars, my_custom_disp)

colnames(new_mtcars)[12] <- "cust_disp"

colnames(new_mtcars)

#---------------------------------------------

#summarize() function summarizes multiple value into a single value in a dataset. 
summarise(mtcars,mean(disp))
summarise(group_by(mtcars, cyl), mean(disp))
summarise(group_by(mtcars, cyl), m = mean(disp), sd = sd(disp))

#--------------

?airquality

head(subset(airquality, Temp > 80, select = c(Ozone, Temp)))
subset(airquality, Day == 1, select = -Temp)
subset(airquality, select = Ozone:Wind)
