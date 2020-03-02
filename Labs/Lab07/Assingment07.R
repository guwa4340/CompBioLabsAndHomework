#make working directory Lab07 from /comBioSandbox/Labs/Lab07
#Gunther Wallach

#1
triangleArea <- function(b,h){
  area <- .5*b*h
  return(area)
}
#test for 10*9*.5 = 45
triangleArea(10,9)
#2a
myAbs <- function(a){
  for(i in 1:length(a)){
    if (a[i] < 0){
      a[i] <- -a[i]
    }
  }
  return(a)
}
myAbs(5)
myAbs(-2.3)
#2b
vec <- c(1.1,2,0,-4.3,9,-12)
myAbs(vec)
#3a,3b
fib <- function(n){
  if (n <= 0){
    print("Error, Please enter number greater than zero")
    return()
  }
  if (n == 1){
    return(0)
  }
  if (n == 2){
    return(c(0,1))
  }else{
    zeros <- rep(0,n)
    zeros[2] <- 1
    for ( i in seq(3,n)){
      zeros[i] <- zeros[i-1] + zeros[i-2]
    }
  }
  return(zeros)
}
fib(-1)
fib(1)
fib(2)
fib(20)
#4a
diffsq <- function(x,y){
  diffsquare <- (x-y)^2
  return(diffsquare)
}
diffsq(3,5)
x <- c(2,4,6)
y <- 4
diffsq(x,y)
#4b
meanvec <- function(v){
  mean <- (sum(v))/(length(v))
  return(mean)
}
meanvec(c(5,15,10))
df <- read.csv(file = "DataForLab07.csv")
x <- df$x
meanvec(x)
#4c
sumsq <- function(v){
  mean <- meanvec(v)
  for (i in 1:length(v)){
    v[i] <- (v[i]-mean)^2
  }
  return(sum(v))
}
sumsq(x)
