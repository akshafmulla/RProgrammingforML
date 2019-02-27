x<-2L
typeof(x)
x	#this will print value of x

y<-2.5
typeof(y)

z<- 3+2i
typeof(z)

a>-"H"
typeof(a)
h<-"Hello"

b<-T
typeof(b)
c<-FALSE
typeof(c)

Full.Name<-"akshafmulla"
Full_Name<-"akshafmulla"
Full!Name<-"akshafmulla"		#Error
Full@Name<-"akshafmulla"		#Error
Full-Name<-"akshafmulla"		#Error

2 Arithmetic Operations.R

a<-10
b<-20

c<-a+b	#sum
c	#this will print value of c

d<-a/b 	#division
d

e <a*b	#multiplication
e

f<- sqrt(a)
f

g<-"Hello"
h<-"to"
i<-"R Programming"

j<- paste(g,h,i)
j

4 Loops.R


counter<-0
while(counter <=5){
	print(counter)
	counter <- counter + 1
}

while(counter <=5){
	print(counter)
	counter <- counter + 1;
}

a<- 1
for(i in a:5){
print(a)
a <- a*b
}

x <-rnorm(10)

for(i in x){
	print(i)
}

for(i in 1:10){
	print(x[i])
}

5 IF-Else.R

x<- rnorm(1)

if (x > 1){
	result <- "Number is greater than x"
} else if (x >=-1){
	result <- "Number is between 1 and -1"
}  else {
	result <- "Number is less than -1"
}
result

6 Exercise - Law of large number.R

n <-50000
x<-rnorm(n)
insidemean <- 0
outsidemean <- 0

for(i in x){
	if((i <= 1.0 && i>= 0)||(i<=0 && i>= -1.0)){
		insidemean <- outsidemean +1
	}
	else{
	outsidemean <- outsidemean +1
	}
}

insidemean

mean <- (insidemean/n)*100
paste(mean % is ",mean)

7 Vector.R

MyFirstvector = c(12,21,21,4)
is.double(MyFirstvector)
is.integer(MyFirstvector)
is.numeric(MyFirstvector)

v2 = c(12L,21L,21L,4L)

v3 = c("a","s","d",3)

seq(1,15)

seq(1,15,3)

rep(3,20)

rep1<- rep(c(1,2,3),3)
rep1

z<- rep(c(1,2,3),times=3)

rep2 <- rep(c(1,2,3),each=3)
rep2

a<- c("a","b","c","d")
a[1] #access particular elements inside a vector
a[1:3] #access sequence of elements
a[-3] #to skip a particular element use - sign
a[-1:-3] #to skip sequence of elements
a[c(1,2,4)] #to select particular elements
b<-a[c(1,3)] #to create a new vector using selected elements from previous vector.

8 Functions.R

http://www.sr.bham.ac.uk/~ajrs/R/r-function_list.html

9 Packages.R

install.packages("ggplot2")
library(rlang)