# Lists

util <- read.csv(file.choose())  #Machine-Utilization.csv
head(util,12)
str(util)
summary(util)

## Getting DF ready.

# We would require a utililzation column as well to determine the utilization of each machine. It is nothing but 1-percent.Idle.
util$Utilization <- 1 - util$Percent.Idle
head(util,12)

# Convert date and time into Posixct time.(refer 6 Date and Time COnversion.R)
util$PosixTime <- as.POSIXct(util$Timestamp, format="%d/%m/%Y %H:%M")
head(util)

# Getting rid of unwanted columns such as timestamp and rearranging PosixTime column to first column.
util$Timestamp <- NULL
head(util,12)
util <- util[c(4,1,2,3)]
head(util,12)

## What is a List??
