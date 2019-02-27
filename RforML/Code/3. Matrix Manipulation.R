# clear workspace
rm(list=ls())

##  MATRIX MANIPULATION  ##

# Creating Matrix
mat1 <- matrix(1:6, nrow = 3, ncol = 2)
mat1

matrix(1:6, nrow = 3, ncol = 2, byrow = TRUE)

nrow(mat1)
ncol(mat1)
dim(mat1)

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

# Matrices & Naming
dimnames(mat1) = list(c("First", "Second", "third"), 
                      c("A", "B"))
mat1
dimnames(mat1)
rownames(mat1)
colnames(mat1)

# Matrix elements and subsetting
mat2 <- matrix(1:12, nrow = 3, ncol = 4)
mat2

mat2[7]
mat2[1,3]

mat2[1:2, c(2, 4)]

mat2[1:6] = 21:26
mat2

mat2[2, c(1, 3)] = 21:22
mat2

mat2[1,]=100
mat2
mat2[1:3,]
mat2[,3]
mat2[row(mat2) < col(mat2)] = 0
mat2

# An example
mat3 = matrix(0, nrow = 4, ncol = 4)
mat3
mat3 [row(mat3) == col(mat3)] = 2
mat3
mat3[abs(row(mat3) - col(mat3)) == 1] = 5

mat3
diag(4)
diag(4)*3
diag(1:5)

#Simple computations with matrices
mat4 = matrix(1:4, nrow = 2, ncol = 2)
mat4
mat4+mat4^2
mat4+1
mat4+1:2

mat4*mat4           ##  element by element
mat4%*%mat4         ##  true multiplication

?"%*%"
mat2

t(mat2)

mat5 <- matrix(sample(1:30,25), nrow=5)
mat5
mat6 <- solve(mat5)
mat6
mat5%*%mat6
round(mat5%*%mat6,1)

# which() function
mat3
which(mat3 > 0)
mat3[which(mat3 == 0)]

# clear workspace
rm(list=ls())
