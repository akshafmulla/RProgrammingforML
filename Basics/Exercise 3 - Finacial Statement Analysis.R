#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses
profit
round(profit,0)

profitaftertax <- profit - (profit * 0.3)
profitaftertax
round(profitaftertax,0)

profitmarginvalue <- profitaftertax/revenue
profitmargin <- profitmarginvalue * 100
round(profitmargin,0)



meanoftheyear <- mean(profitaftertax)
meanoftheyear

for(i in profitaftertax){
  
  if(i > meanoftheyear)
  {
    print(i)
    print("good month")
  }
  else{
    print(i)
    print("bad month")
  }
}

bestmonth <- max(profitaftertax)
round(bestmonth,0)

worstmonth <- min(profitaftertax)
round(worstmonth,0)

