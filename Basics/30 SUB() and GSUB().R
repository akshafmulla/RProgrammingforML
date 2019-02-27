# SUB() and GSUB()

fin <- read.csv(file.choose())   #Future-500.csv

?sub
# sub replaces only the first match whereas gsub replaces all the matches.Similar to ctrl+h in Notepad++. Provide the value to be replaced and the value to be replaced with. Here we just need an additional parameter where to take that data from.
# syntax is gsub("patterntobereplaced","patterntobereplacedwith",wheretofindit) same applies with sub()

head(fin)

# we want just the values to replace the " Dollars" from fin$Expenses with nothing, then we can use the below command.
fin$Expenses <- gsub(" Dollars","",fin$Expenses) #This will replace all the " Dollars with nothing."
fin$Expenses <- gsub(",","",fin$Expenses) #Similarly replacing comma from expenses.
head(fin)
str(fin) #If we see here, expenses is no longer numeric, its changed to character.

# To remove $ sign from revenue, we need to use the escape sequence method. Since $ is a character in R, we cannot directly replace it. hence we need escape sequence for the same.
fin$Revenue <- gsub("\\$","",fin$Revenue)
head(fin)
fin$Revenue <- gsub(",","",fin$Revenue)

# To remove % from growth
fin$Growth <- gsub("%","",fin$Growth)
head(fin)

str(fin)

# To convert the columns back to numeric after its been auto converted to character by gsub() function.
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)
fin$Expenses <- as.numeric(fin$Expenses)

