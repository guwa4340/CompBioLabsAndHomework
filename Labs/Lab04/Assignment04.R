#Step 1:
ten <- 1:10
for( i in ten){
  print("hi")
}
#Step 2:
eight <- 1:8
bank <- 10
for (i in eight){
  bank = bank + 10
  bank = bank - 2.68
  print(bank)
}
#Step 3:
pop <- 2000
seven <- 1:7
for( i in seven){
  five_percent <- pop*.05
  pop <- pop - five_percent
  print(pop)
}
#Step 4:
twelve <- 2:12
n <- c(2500,0,0,0,0,0,0,0,0,0,0,0)
for( t in twelve){
  n[t] = n[t-1] + (0.8 * n[t-1] * (10000 - n[t-1])/10000) 
  print(n[t])
}
#Step 5a:
zeros <- rep(0,18)
#Step 5b:
for( i in seq(1,18)){
  zeros[i] <- i*3   
}
zeros
#Step 5c:
zeros <- rep(0,18)
zeros[1] <- 1
#Step 5d:
for (i in seq(2,18)){
  zeros[i] <- zeros[i-1]*3
}
print(zeros)
#Step 6:
zeros <- rep(0,20)
zeros[2] <- 1
for ( i in seq(3,20)){
   zeros[i] <- zeros[i-1] + zeros[i-2]
}
zeros
#step 7:
#Stored in part 4
time <- 1:12
n
plot(time,n)
