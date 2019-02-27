# Facets and Co-ordinates

movies <- read.csv(file.choose())#movie-ratings.csv
colnames(movies) <- c("Film","genre","CriticRatings","AudienceRatings","BudgetMillions","Year")
head(movies)
library(ggplot2)
abc <- ggplot(data = movies, aes(x=CriticRatings,y=AudienceRatings, color = genre))
abc + geom_point()

#Facets
#Using facets we can segregate the chart based on axis. facet_grid(xaxis~yaxis). If we want tojust insert on axis, then we can use facet_grid(xaxisvalues~.) and facet_grid(.~yaxisvalue) fory axis.

def <- ggplot(data = movies, aes(x = BudgetMillions))
def + geom_histogram(aes(fill = genre) , color = "Black") + facet_grid(genre~.)

#If we need to have different ranges for different genre's, we can use the scales function and set is as "free"
def + geom_histogram(aes(fill = genre) , color = "Black") + facet_grid(genre~., scales = "free") # IF we see the comedy genre the scale on y axis is 0-40 and for thriller it is 0-8. This is done with the help of scales function.

# For both the axis.
abc <- ggplot(data = movies, aes(x=CriticRatings,y=AudienceRatings, color = genre))
abc + geom_point()+ facet_grid(genre~Year)

# adding statistics to the graph for better view.
abc + geom_point()+ facet_grid(genre~Year)+ geom_smooth(fill=NA)

#Coordinates

#To zoom in to a particular graph, we will have to use xlim() and ylim() function. This functions will only show the values passed in between the function.
# For eg. we are limiting the x axis from 50-100 and y axis from 50-100, hence we will be able to see only that graph.
# IMPORTANT : This graph removes the sections which are not present in the limits. Hence DATA IS LOST.

abc + geom_point() + xlim(50,100) + ylim(50,100)

# This function works in some cases but not always. We can use another function called as 

a <-  ggplot(data=movies, aes(x=BudgetMillions , fill = genre))
a + geom_histogram(binwidth = 10,color = "Black")

# If we want to limit the data here, we wont get the correct answer using xlim and ylim. let see why.
a + geom_histogram(binwidth = 10,color = "Black") + ylim(50,100) # this function cuts off the values starting below 50 and hence it gives the wrong representation.

# Hence we will use the coordinate function which will not loose any data but JUST ZOOM IN to the mentioned co-ordinates.

a + geom_histogram(binwidth = 10,color = "Black") + coord_cartesian(ylim = c(50,100)) 

# using facets with co-ordinates.

abc + geom_point()+ facet_grid(genre~Year)+ geom_smooth(fill=NA) + coord_cartesian(ylim = c(0,100))
