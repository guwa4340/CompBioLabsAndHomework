#step 3a
twelve <- 2:12
n <- c(2500,0,0,0,0,0,0,0,0,0,0,0)
for( t in twelve){
  n[t] = n[t-1] + (0.8 * n[t-1] * (10000 - n[t-1])/10000) 
  print(n[t])
}
time <- 1:12
n
plot(time,n)
#step 3b
LogisticGrowthModel <- function(r, K, num_gen, init_pop){
  gens <- 2:num_gen
  pops <- rep(0,num_gen)
  pops[1] <- init_pop
  
  for( t in gens){
    n[t] = n[t-1] + (r * n[t-1] * (K - n[t-1])/K) 
  }
  #3c
  time <- 1:num_gen
  plot(time,n)
  time_name <- "Generations"
  n_name <- "Abundance"
  df <- data.frame(time,n)
  names(df) <- c(time_name, n_name)
  return(df)
  
}
#3d
df <- LogisticGrowthModel(.8, 10000, 12, 2500)
#3e
write.csv(x = df, file = "Logistic_Growth.csv")
