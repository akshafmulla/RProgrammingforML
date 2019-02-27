
#shortcut to run Ctrl+enter
2+3
a = 2+3
a

## Assignment ##

x = 3
x

a3 = 3

x <- 3 # alt + - "<-"

x = 3
x = x+1
x

############################################################
## Data Types in R ##
############################################################

# Numeric - real and decimals

num1 <- 1
num2 <- 1.7
class(num1)
class(num2)

# Integer

num <- 3L
class(num)
is.integer(num)
is.integer(num1)

as.integer(num1)

#Complex
num4 <- as.complex(num1)
num4

a <- -20
class(a)
sqrt(a)
as.complex(a)
sqrt(as.complex(a))

sqrt(-20)
sqrt(-20+0i)

#Character
ch1 <- "RProgramming"
class(ch1)

ch1 <- c("st", "at", "is")

#Logical
x = c(3,7,1,2)
class(x)
y <- x > 2
y
class(y)

u = TRUE; v = FALSE

u & v            # U AND v
u | v            # u OR v
!u               # negation of u

###################################
## coercing data type ##
###################################

z = c(1,2,3,4,5,6)
z
class(z)

y <- 1:6
y
class(y)

#------------------------
z = 3
class(z)

z <- as.integer(z)
class(z)

z = c(0, 1,2,3,4,5,6)
class(z)

z <- as.integer(z)
class(z)

z <- as.logical(z)
z
class(z)

z <- as.character(z)
z
class(z)

a = 10
a = as.logical(a)
a

# Nonsensical coercion results in NAs
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)

############################################################
## Operators in R ##
############################################################

###################################
## Aithmetic Operators ##
###################################

# Airthmetic Operators '+' Addition #

# Addition in vectors of same length #
v <-  c(2, 3, 4)
v
print (v)

t <- c(5, 6, 7)
t

p <- v + t
p

# Addition in vectors of different length; lengths are multiples of each other #

v <-  c(2, 3, 4, 8, 9, 10)
v
print (v)

t <- c(5, 6, 7)
t

p <- v + t
p

# Addition in vectors of different length; lengths are not multiples of each other #

v <-  c(2, 3, 4, 8, 9, 10, 11, 12)
v
print (v)

t <- c(5, 6, 7)
t

p <- v + t
p

# Warning message: In v + t : longer object length is not a multiple of shorter object length

# Airthmetic Operators '-' Substraction #

v <-  c(2, 3, 4)
v

t <- c(5, 6, 7)
t

p <- v - t
p

q <- t - v
q

# Airthmetic Operators '*' Multiplication #

p = v * t
p

# Airthmetic Operators '/' Division #
v <-  c(20, 30, 40)
v

t <- c(5, 6, 7)
t

p <- v / t
p

v <-  c(20, 30, 42)

p <- v / t
p

# Airthmetic Operators '%%' remainder of the first vector when it is divided with the second vector  #

v <-  c(22, 37, 42)
v

t <- c(5, 6, 7)
t

p <- v %% t
p

#--------------

v <- c(22,37,41)
v

t <- c(5,6,7)
t

p <- v %% t
p

#--------------

# Airthmetic Operators '%/%' Quotient #
v <-  c(22, 37, 42)
v

t <- c(5, 6, 7)
t

p <- v %/% t
p


# Airthmetic Operators '^' the first vector is raised to the power of second vector #

v <-  c(10, 11, 12)
v

t <- c(2, 3, 4)
t

p <- v ^ t
p

#----------------
v <-  c(10.5, 11, 12)
v

t <- c(2, 3, 4.5)
t

p <- v ^ t
p

###################################
## Relational Operators ##
###################################

# Relational operator ">" , Checks if each element of the first vector is 
#greater than the corresponding element of the second vector

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

# Relational operator "<", Checks if each element of the first vector is less 
#than the corresponding element of the second vector.

print(v < t)

# Relational operator "==", Checks if each element of the first vector is
#equal to the corresponding element of the second vector.
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v == t)

# Relational operator "<=", Checks if each element of the first vector is less than or equal 
#to the corresponding element of the second vector.
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v<=t)


# Relational operator ">=", Checks if each element of the first vector is 
#greater than or equal to the corresponding element of the second vector.
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>=t)

v <- c(100,1,1)
t <- c(2,2.5,3)
v>=t

# Relational operator "!=", checks if each element of the first vector is unequal 
#to the corresponding element of the second vector.
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)

