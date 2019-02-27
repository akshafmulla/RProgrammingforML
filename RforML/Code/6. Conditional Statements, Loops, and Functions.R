# Conditional STatements in R #

# if statement

x <- 5
if (x > 0){
  print("Postive Number")
}


# ifelse statement

x <- -5
if (x > 0){
  print("Postive Number")
} else {
  print ("Negative Number")
}

# ifelse statement in a single line
if(x > 0) print("Postive Number") else print ("Negative Number")

ifelse(x > 0, "Postive Number", "Negative Number")

x <- 0
if (x < 0) {
  print("Negative Number")
} else if (x > 0) {
  print("Positive Number")
} else
  print("Zero")


# switch statement
#syntax is :: switch (statement, list)
#Here, the statement is evaluated and based on this value, the corresponding 
#item in the list is returned.

x <- switch(3,"red","green","blue")
x

switch(1,"red","green","blue")

#If the numeric value is out of range (greater than the number of items in the list or 
#smaller than 1) , #then, NULL is returned

x <- switch(4,"red","green","blue")
x

x <- switch(0,"red","green","blue")
x

#The result of the statement can be a string as well. 
#In this case, the matching named item's value is returned.

switch("color", "color" = "Yellow", "shape" = "square", "length" = 5)

switch("length", "color" = "red", "shape" = "square", "length" = 5)

# Loops

print (paste("The year is", 2010))
print (paste("The year is", 2011))
print (paste("The year is", 2012))
print (paste("The year is", 2013))
print (paste("The year is", 2014))
print (paste("The year is", 2015))

for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
}

for (year in c(2010:2015)){
  print(paste("The year is", year))
}

# count of number of even numbers in x
x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
  if(val%%2 == 0) count = count + 1
}
print (count)

val = 3
val%%2 == 0

# While Loop

i <- 1
while (i < 10) {
  print(i)
  i = i+1
}

my.name <-  readline(prompt = "Enter name: ")
my.age <-  readline(prompt = "Enter age: ")

number <-  readline(prompt = "Enter a number: ")
number

#repeat loop
#A repeat loop is used to iterate over a block of code multiple number of times.
#There is no condition check in repeat loop to exit the loop.
#We must ourselves put a condition explicitly inside the body of the loop 
#and use the break statement to exit the loop. Failing to do so will result into an infinite loop.

x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}

## break statement
## When present inside a loop, it stops the iterations from executing and forces the flow to exit the loop.

num <- 1:5
for (val in num) 
{
  if (val == 3)
  {
    break
  }
  print(val)
}

num <- 1:5
for (val in num) 
{
  if ((val == 3) || (val == 2))
  {
    next
  }
  print(val)
}

############################################################
## R Functions ##
############################################################

#append function
#append() function adds elements to a vector
x <- c(1:5)
x
y <- append(x, 100)
y
y <- append(x, 100, after=2)
y

#--------------------------

#c() combines values into a vector
x <- c(1,2,3,4)
x

#-------------------------

# identical function is the safe and reliable way to test whether two objects are exactly equal.
identical(1,1)
identical(1,2)

#---------------------------

#length() function gets or sets the length of an R object

#Get vector length:
x <- c(1,2,5,4,6,1,22,1)
length(x)

#Set vector length:
length(x) <- 4
x

#---------------------------

# ls function lists objects in the working environment

ls()

# deletes lists objects in the working environment
rm(list = ls())

#range() function get a vector of the minimum and maximum values

x <- c(1,2.3,2,3,4,8,12,43,-4,-1)
r <- range(x)
r

#------------------------------

# rep() function replicates the values in x.

x <- rep(1:5)
x
#Repeat 1 -5 two times
x <- rep(1:5,2)
x

#------------------------------

#rev() function reverses an R object

x <- c("green","red","yellow")
y <- rev(x)
y

x <- c(1:10)
y <- rev(x)
y
rm (y)

#---------------------------------

#unique() function removes duplicated elements/rows from a vector, data frame or array

x <- c(2:8,4:10)
x
unique(x)

#--------------------------------

# tolower() function converter string to its lower case.

x <- c("Green", "Red", "Black")
tolower(x)

#--------------------------------

#toupper() function converts a string to its upper case.

x <- c("Green", "Red", "Black")
toupper(x)

#----------------------------------

#The grep() function are used for searching for matches
str <- c("Regular", "expression", "examples of R language")
str
x <- grep("ex",str,value=F)
x

x <- grep("ex",str,value=T)
x

#------------------------------

# class function returs class of an object

data <- c("East","West","East","North","North","East","West","West","West","East","North")

class(data)

# Apply the factor function.
factor_data <- factor(data)

class(factor_data)

#------------------------------

#mode() function gets or sets the type or storage mode of an object

x <- 3
mode(x)

#set the mode to character
mode(x) <- "character"
mode(x)
