 #Filtering data in DF

data <- read.csv(file.choose()) #Read file DemographicData.csv.
head(data)

#If i need to search based on condition eg. in the DF, we need to search the below conditions:

a <- data$Birth.rate > 40
a   #This is a boolean vector with values true for all the rows which are having birthrate >40
data[a,]  #This will have the data of all the countries which has value TRUE stored in a. This is a very special functionaity of R wherein the data which is boolean is comapred with the DF and only the VALUES which are true are displayed.

data[data$Birth.rate > 40,] #It can also be written in this way instead of assigning a variable then putting it is square brackets.

data[data$Country.Name == "Malta",]  #This also works for character values.

# If we need to search based on multiple conditions.

data[data$Birth.rate > 40 & data$Internet.users <2,] 
