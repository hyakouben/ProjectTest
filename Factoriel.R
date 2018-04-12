### Fact FOR loop
factfor <- function(x) {
   y<-1
   for (i in 1:x){
        y<-y*i}
     return(y)
}

### While

factwhile <- function (x) {
    y <- 1
  while( x> 0) {
     y <- y * x
     x<- x-1
  }
  return(y)
}


#### repeat
factrepeat <- function(x){
  y <- 1
  repeat{
    y <- y * x
    x <- x - 1
    if(x == 0){
      break
    }
  }
  return(y)
}
#?4. n! vetorise
factvect <- function(n){
  res <- prod(1:n)
  return(res)
}


library(microbenchmark)
tmp <- microbenchmark(factfor(1000),
                      factwhile(1000),
                      factrepeat(1000),
                      factvect(1000))
boxplot(tmp)


switchfunction <- function(type=1) {
    switch( type == 1, print(factfor(5))
            ,type == 2, print (factwhile(5))
            ,type == 3, print (factrepeat(5)))
  
}
