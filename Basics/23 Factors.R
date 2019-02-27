#Factors

movies <- read.csv(file.choose())#movie-ratings.csv
colnames(movies) <- c("Film","genre","CriticRatings","AudienceRatings","BudgetMillions","Year")
head(movies)

# Factors is categorical variables which is nothing but dividing a particualr column in categories and assigning each category a number. R looks through each column and searches values and based on some internal assignment techniques it assigns a number.
#eg : In this DF, we have a column of Genre which states what is the type of Film i.e.Comedy,Adventure,Action etc. Based on its own computation it will allocate different numbers to each categories.
#To find this we can use structure function(str()) which states which factors are there.
#If we want to know how many different categories are there, we can use the levels() method

str(movies) #If we do this, we are able to see 7 level i.e. categories.IF we want to see which categories are there,use levels() function.
levels(movies$genre) #This will give the categories.
summary(movies) #This will summarize the DF

#If we notice the summary(movies) function, we can see that genre is categorized as a factor but when it comes to year it is not.
#So to convert a non-factorized column in a factorized column we need to use the factor() function.

movies$Year <- factor(movies$Year)  #Insert the factor() function inside the DF to update the DF with the factor.
summary(movies)
