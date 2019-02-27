N <- 500000

count <- rnorm(N,0,1)
count

counter <- 0

for(i in count){
  if(i>-1 && i < 1){
    counter <- counter + 1
  }
}

a <- (counter/N)*100
finalvalue <- paste(a,"%")
finalvalue
