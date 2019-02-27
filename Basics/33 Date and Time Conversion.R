# Date and Time Conversion

util1 <- read.csv(file.choose())  #Machine-Utilization.csv

# It is important to have a generalized format for working on date and time.
# Hence in R we use the POSIXct function to convert date and time in a generalized format.
# here we pass the column name with the structure of data present in the DF.
# Quick things to remember. day and month are 2 digits hence small letters are used i.e. d and m.
# For year, if its 2016 i.e. 4 digits then we use Capital Y and for year 16 we use small y.
# For time, if the format is 06:00 then we use capital H and M with a : in between. Find below example.

?POSIXct

util1$PosixTime <- as.POSIXct(util1$Timestamp, format="%d/%m/%Y %H:%M")
head(util1)
