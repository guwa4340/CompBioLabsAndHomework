#Set Working Directory to CompBioLabsAndHomework/Labs
#1:

#1.1:
x <- 10
if (x > 5){
  print("x is larger than 5")
}else{
  print("x is not larger than 5")
}
#1.2:
df <- read.csv(file = "Lab05/ExampleData.csv")
x <- df$x
#1.2a:
head(df)
for (i in 1:2024){
  if (df$x[i] < 0){
    df$x[i] <- NA
  }
}
head(df)
newVec <- df$x
#1.2b:
li2 <- is.na(newVec)
newVec[li2] <- NaN
newVec
#1.2c:
li3 <- which(is.na(newVec))
newVec[li3] <- NA
newVec
#1.2d:
counter <- 0
for (j in 1:length(newVec)){
  if (newVec[j] >= 50 & newVec[j] <= 100){
    print("Found Value in Range")
    counter = counter + 1
  }
}
print(counter)
#1.2e:
li1 <- which(newVec >= 50 & newVec <= 100)
FiftyToOneHundred <- newVec[li1]
#1.2f:
write.csv(x = FiftyToOneHundred, file = "Lab05/FiftyToOneHundred.csv")
#1.3:
CO2 <- read.csv("Lab04/CO2_data_cut_paste.csv")
head(CO2)
#1.3a:
for (ii in 1:length(CO2$Year)){
  if (CO2$Gas[ii] != 0){
    print(CO2$Year[ii])
    break
  }
}
#1.3b:
li4 <- which(CO2$Total >= 200 & CO2$Total <= 300)
print(CO2$Year[li4])

#2:
#Initilize Variables
totalGenerations <- 1000
initPrey <- 100
initPred <- 10
a <- 0.01
r <- 0.2
m <- 0.05
k <- 0.1
n <- rep(0,totalGenerations)
p <- rep(0,totalGenerations)
n[1] = 100
p[1] = 10
#calculations
for (t in 2:totalGenerations){
  prey <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  if (prey < 0){
    prey <- 0
  }
  n[t] <- prey
  
  pred <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  if (pred < 0){
    pred <- 0
  }
  p[t] <- pred
}
#plot calculations
time <- 1:totalGenerations
plot(time,n,col="red")
par(new=TRUE)
plot(time,p,col="green")
lines(time,n,col="red")
lines(time,p,col="green")
#create matrix of calculation
