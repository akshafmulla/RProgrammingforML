# Missing Data

#Pre-requisite
fin <- read.csv(file.choose())   #Future-500.csv
fin$Expenses <- gsub(" Dollars","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses) 
fin$Revenue <- gsub("\\$","",fin$Revenue)
fin$Revenue <- gsub(",","",fin$Revenue)
fin$Growth <- gsub("%","",fin$Growth)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)
fin$Expenses <- as.numeric(fin$Expenses)


## Locate Missing Data in a DF
# R has provided with a function called as complete.cases(DF) which wil return true for all the rows that has complete values and False for all the values that have NA. It will again return true for all the rows that have blank space.
# In Subsetting, we need the values to be true and since it is returning false for missing one's, we will use "Not operator !" for getting the inverse.

fin[!complete.cases(fin),]

# Since this just finds the value for rows having NA and neglect the rows with blank value, we need to fix this problem at the core.
# This can be done at the start itself while loading the DF.

fin <- read.csv(file.choose(),na.strings = c(""))  #na.strings parameter finds all the column which does not have data in it. So this basically states that in the imported DF, all the columns with no values need to be replcaed with the values mentioned inside c(). Here we are replacing all the values with NA. We can pass multiple values for the same.
head(fin,20) #We can notice some data is stored as NA and some as <NA>. All <NA> values are factors whereas NA are non-factors.


## Which() for non-missing Data

# Assume we need to find the row containing Revenue= 9746272. so, we will use the below code.
fin[fin$Revenue==9746272,]  #If we see here, we are getting 2 extra columns of NA. This is because when we see the DF, it has two columns with Revenue set as NA. The Subsetting function we are using only removes FALSE data but does not remove NA. Hence we are getting NA rows as well.
# But since R is a smart language, it knows we have not asked for NA rows, so it will display the NA rows with complete data set as NA.

# to resolve this issue we are using which() method wherein we will just insert the subsetting method inside which command and hence it will display only rows which have the exact mentioned value.
fin[which(fin$Revenue==9746272),]

## Find columns with value NA

# As we know, comparing anything with NA will result to NA. Hence we cannot use the below filter option.
fin$Revenue == NA   # IF we see, all the rows that are returned are NA.

# To tackle this problem, we will use a method designed specifically for this problem which is known as is.na(). This is similar to methods such as is.character(), is.numeric() etc.
is.na(fin$Revenue)   #This will return TRUE for all the rows having NA.
#We can now use this to find the rows having values NA.
fin[is.na(fin$Revenue),]
fin[is.na(fin$State),]

## Removing records with missing data
# The most important things is to first take backup before updating anything.
finbackup <- fin

fin[!complete.cases(fin),]  # This will fetch the value for columns with value NA.

# Removing rows where Industy =  NA. So the approach is simple. We will first find the rows which have NA in industry. Then we will inverse it using ! operator. This will give us the DF without column of NA in industry.
fin <- fin[!is.na(fin$Industry),] # This will fetch all the rows accept the rows where there is NA in Industries. We will then put this data into our DF.
head(fin,20) #If we see here the row numbers are not changed after we removed the rows. eg. row number 14 and 15 are missing which are nothing but the rows having NA in Industry.

#To solve this we have 2 approaches.
#1. FInd how many rows are there using the nrow(DFname) function and append it on the rownames(DFname) method.
rownames(fin) <- 1:nrow(fin)
fin 

# 2.Set the rownames value to NULL. This will reset the counter.
rownames(fin) <- NULL
fin

##Replacing Missing data using Factual Analysis.In this method, we use the facts depicted to find a possible value. Like in this case, we knwo that for New York city the state is also NY and for San Francisco it is California. SO based on these facts we will update the DF accordingly.

fin[!complete.cases(fin$State),]  # Fetching NA value in State column.
fin[is.na(fin$State) & fin$City == "New York","State"] <- "NY"  # replacing state value for Newyork with NY.
fin[c(11,377),]  #verify with row numbers

fin[is.na(fin$State) & fin$City =="San Francisco","State"] <- "CA"

## Replacing Missing data using Median Imputation Method. 

#what is mean and what is a median.?
#The "mean" is the "average" you're used to, where you add up all the numbers and then divide by the number of numbers. The "median" is the "middle" value in the list of numbers.
#so for example, the mean and median for vector a is as below

a <- c(12, 13, 14,200, 30, 12)
a
mean(a)  # The mean comes out to be 46.83
median(a) #Median comes out to be 13.5

# Why use median over mean.??? This is because mean value changes drastically even if we have one higher value. If we see the mean is 46 for our vector a and that is because of the value 200 in the vector. 
# But the same vector, has no drastic effect for a median. Hence we will use median instead of mean.

# To fill employee data, we will use Median method.

fin[!complete.cases(fin),] # finding NA values in the DF. 

# We have two rows in the Employee column and 1 row in growth column with NA value. Lets take it one by one.

# 1. Misiing is Employees. For Industry = Retail
median(fin$Employees, na.rm = TRUE) # Median is 56 for Employees column. we are using na.rm parameter to not consider NA when computing median. If we dont put that, the median will be NA.

# If we see the median for Employees in the DF, it varies based on type of Industry. This can still be iterated and hence we will take the median for Employee based on Industry type for more precision.
median_emp <- median(fin[fin$Industry == "Retail","Employees" ], na.rm = TRUE)
median_emp

fin[is.na(fin$Employees) & fin$Industry=="Retail","Employees"] <- median_emp   #Filtering the field based on Industry = Retail and EMployee = NA and then Adding median value in the NA field. 
fin[3,]  #verify

fin[!complete.cases(fin),] # finding NA values in the DF.

# 2. Missing is Employees. Industry = Financial Services

median_emp1 <- median(fin[fin$Industry == "Financial Services","Employees"], na.rm = TRUE)
median_emp1

fin[fin$Industry=="Financial Services" & is.na(fin$Employees),"Employees"] <- median_emp1
fin[330,] #verify

#3. Missing is Growth. Industy = Construction.

median_growth <- median(fin[fin$Industry == "Construction","Growth"], na.rm = TRUE)
median_growth

fin[fin$Industry == "Construction" & is.na(fin$Growth),"Growth"] <- median_growth
fin[8,]  #verify

# 4. Missing is Revenue. Industry is COntruction. 2 rows at the same time.

fin[!complete.cases(fin),]

median_rev_const <- median(fin[fin$Industry == "Construction","Revenue"], na.rm = TRUE)
median_rev_const

fin[fin$Industry == "Construction" & is.na(fin$Revenue),"Revenue"] <- median_rev_const
fin[fin$Industry== "Construction",]

# 5. Missing values for expenses without Revenue and Profit value present
fin_back1 <- fin

median_exp_cons <- median(fin[fin$Industry == "Construction", "Expenses"],na.rm = TRUE)
median_exp_cons

fin[fin$Industry == "Construction" & is.na(fin$Expenses), "Expenses"] <-median_exp_cons

# 6.Missing Expenses with Revenue and Profit value present.

fin[!complete.cases(fin),]
fin[is.na(fin$Expenses),"Expenses"] <- fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]
fin[15,]

# 7.  Missing values for Profit.
fin[!complete.cases(fin),]

fin[is.na(fin$Profit), "Profit"] <- fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit), "Expenses"]
fin[c(8,44),]

#This completes removing the NA from file(except for one which can be ignored as it wont have any impact).


