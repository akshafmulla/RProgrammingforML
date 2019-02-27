# Data Preparation

fin <- read.csv(file.choose())   #Future-500.csv
head(fin)
tail(fin)
str(fin)
summary(fin)

## Convert non-factor column into factorized column.(Refresher from previous course)
fin$ID <- factor(fin$ID)
fin$Inception <- factor(fin$Inception)

## To convert a type of vector to another.

a <- c("12","13","14","12","12")
a #a is a charater vector.
typeof(a)

b <- as.numeric(a)  # as. function converts the type of a vector into the type specified. eg. here we have specified to convert vector a to numeric vector.
b
typeof(b)
