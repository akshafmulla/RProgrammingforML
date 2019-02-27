# Aesthetics and Geometry

movies <- read.csv(file.choose())#movie-ratings.csv
colnames(movies) <- c("Film","genre","CriticRatings","AudienceRatings","BudgetMillions","Year")
head(movies)
library(ggplot2)

#Aesthetics are the things we can see such as X and Y axis variables, color, size.
head(movies)

?aes()

ggplot(data = movies, aes(x=CriticRatings, y=AudienceRatings)) #here x and y are aesthetics in the plot


#Aesthetics alone cannot display anything in the plot so we need to add Geometry to get something to be displayed.
ggplot(data = movies, aes(x=CriticRatings, y=AudienceRatings)) + geom_point()

#Add color 
ggplot(data = movies, aes(x=CriticRatings, y=AudienceRatings, color = genre)) + geom_point()

#Add size
ggplot(data = movies, aes(x=CriticRatings, y=AudienceRatings, color = genre, size = BudgetMillions)) + geom_point()

# One more concept we have is about the + sign. The plus sign adds 2 objects so in this case ggplot() is an object.

abc <- ggplot(data = movies, aes(x=CriticRatings, y=AudienceRatings, color = genre, size = BudgetMillions))

# iF we see the above code, abc is the object which hold the ggplot data and aesthetics. 
# This can be used in may ways such as adding different geoms for the same ggplot. eg:

abc + geom_point() #This will consider geom as point.
abc + geom_line() #This will consider geoms as line

# This can be used for working on easier code.

#We can also use the + sign to add multiple geoms.

abc + geom_line() + geom_point() #In this the plotting happens sequentially.That means the plot for geom_line() + geom_point() is different than geom_point() + geom_line().

# If we need to override the aesthetics of the object then we can pass that parameter in the geom function shown as below.
abc + geom_point(aes(size = genre))

# See the original value of abc is not changed.


# Mapping vs Setting an Aethetics

# Mapping means 'mapping a variable' to a parameter. eg. color = genre is mapping a variable.
# Setting means 'setting a value' to a parameter. eg. color = "Green"

abc + geom_point(aes(color = genre))
abc + geom_point(color="DarkGreen")
abc + geom_point(aes(color = "DarkGreen")) #This will lead to ambigious value of color as we are trying to map a parameter with a value.
abc + geom_point(size = BudgetMillions) #This will also lead to an error.


# smoothers are used as statistical tool. it creates a graph kind of representation

abc + geom_point() + geom_smooth(fill=NA)


#boxplots

abc + geom_boxplot() + geom_point()
abc + geom_boxplot() + geom_jitter()  #use jitters instead of point with boxplot. helps in better representaion.
abc + geom_jitter() + geom_boxplot(alpha=0.5, size = 1.2) #using alpha to create boxplot half transparent which is visually better


