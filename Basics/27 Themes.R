# Themes

#Themes are nothing but changing size, font color etc of the lengends, axis names, axis values etc.
# This is achived using themes function.

movies <- read.csv(file.choose())#movie-ratings.csv
colnames(movies) <- c("Film","genre","CriticRatings","AudienceRatings","BudgetMillions","Year")
head(movies)
library(ggplot2)
a <-  ggplot(data=movies, aes(x=BudgetMillions , fill = genre))
h <- a + geom_histogram(binwidth = 10,color = "Black")

#Changing x and y axis names

h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(color = "DarkGreen", size = 30),axis.title.y = element_text(color = "Red",size = 30))

#Changing x and y axis number size
h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(color = "DarkGreen", size = 30),axis.title.y = element_text(color = "Red",size = 30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20))

#changing legend size and position and Add title
h + xlab("Money Axis") + ylab("Number of Movies") + ggtitle("This is Sparta") + theme(axis.title.x = element_text(color = "DarkGreen", size = 30),axis.title.y = element_text(color = "Red",size = 30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20), legend.title = element_text(size = 30), legend.text = element_text(size=20), legend.position = c(1,1), legend.justification = c(1,1), plot.title = element_text(colour = "DarkBlue",size = 40,family = "Courier"))

