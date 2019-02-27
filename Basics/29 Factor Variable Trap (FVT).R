# Factor Variable Trap

# FVT happens for a particular case when we convert a vector of any type into a factor and then try to convert the factor back to numeric.

a <- c("12","13","14","12","12")
a #a is a character vector.
typeof(a)

## What if we want to convert vector a into a factor in DF.
c <- factor(a)
c

d <- as.numeric(c)  #converting c into numeric. output is 1 2 3 1 1.
d   #This is wrong data. What is happening here is c is nothing but factor of a. Even though a is a character vector, what is stored in c is number allocated to levels of c.
# In this case, 12 is assigned as 1, 13 as 2, 14 as 3. So the result when we convert to d is 1 2 3 1 1which is nothing but c stored in the form of factors.
# It can also be seen that the typeof(c) is integer which should not be as a is a character value and we have not yet converted the vector using as.numeric function.
#This proves that c is storing the factored values.
#This issue is called as Factor Variable Trap.

#To avoid this, we can first restore the value of a and then convert it into numeric.
e <- as.character(a)
e
f <- as.numeric(e)
f #This will give the correct result.

#OR

g <- as.numeric(as.character(a))
g
