# Histogram and Density Charts

movies <- read.csv(file.choose())#movie-ratings.csv
colnames(movies) <- c("Film","genre","CriticRatings","AudienceRatings","BudgetMillions","Year")
head(movies)
abc <- ggplot(data = movies, aes(x=BudgetMillions)) #creating object of ggplot

#Histogram doesnt require Y axis value. It automatically computes it.

abc + geom_histogram(binwidth = 10, aes(fill = genre), color = "black") #In histogram fill will add color in the bars. Color is used to add border to the bars.

#Density Charts

abc + geom_density(aes(fill = genre)) 
#The above density chart will have values overlapping. To avoid that use position parameter.
abc + geom_density(aes(fill = genre), position = "stack")


