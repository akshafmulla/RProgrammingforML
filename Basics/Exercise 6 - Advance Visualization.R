# Exercise 6 - Advance Visualization

exerMov <- read.csv(file.choose())
head(exerMov)
colnames(exerMov) <- c("DayofWeek","Director",	"Genre",	"MovieTitle",	"ReleaseDate",	"Studio",	"AdjustedGrossInMill",	"BudgetInMill",	"GrossInMill",	"IMDbRating",	"MovieLensRating",	"OverseasInMill",	"OverseasPercentage",	"ProfitInMill",	"ProfitPercentage","RuntimeInMinutes",	"USInMill",	"GrossPercentageInUS")

levels(exerMov$Genre)

filt1 <- exerMov$Genre == "action" | exerMov$Genre == "adventure" | exerMov$Genre == "animation" | exerMov$Genre == "comedy" | exerMov$Genre == "drama"

filt2 <- exerMov$Studio == "Buena Vista Studios" | exerMov$Studio == "Fox" | exerMov$Studio == "Sony" | exerMov$Studio == "Paramount Pictures" | exerMov$Studio == "Universal" | exerMov$Studio == "WB"

exermov2 <- exerMov[filt1 & filt2,]

a <- ggplot(data = exermov2, aes(x= Genre , y = GrossPercentageInUS))
b <- a + geom_jitter(aes(color=Studio, size = BudgetInMill)) + geom_boxplot(alpha=0.5, outlier.colour = NA)

b + xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre") + theme(axis.title.x = element_text(size = 20, colour = "Blue") , axis.title.y = element_text(size = 20, color = "Blue"),plot.title = element_text(colour = "DarkBlue",size = 10,family = "Comis Sans MS"))

                                               