# Assignment 07 #

## From Lab08 of EBIO4420 at CU Boulder Spring 2020 ##

### Gunther Wallach ###

In assingment07, we were to create a function for Logistic Population Growth, with inputs of _r, K, number of generations, and initial population_

```python
LogisticGrowthModel <- function(r, K, num_gen, init_pop){ 
```

Here, the parameters are pushed into the function, and the function is titled _LogisticGrowthModel_

```python
gens <- 2:num_gen
pops <- rep(0,num_gen)
pops[1] <- init_pop

for( t in gens){
  n[t] = n[t-1] + (r * n[t-1] * (K - n[t-1])/K) 
}
time <- 1:num_gen
plot(time,n)
time_name <- "Generations"
n_name <- "Abundance"
df <- data.frame(time,n)
names(df) <- c(time_name, n_name)
return(df)
}
```

Here the generations are passed in an array of numbers incrementing by 1 starting at 2 and ending at the number of generations that is passed into the function. Additionally, I also create an array of zeros, that is the length of the number of generations. I set the first value of that array to the initial population that is passed in. 

Then within the for loop I calculate the logisitic growth, and store every step in an empty array titled n. 

Then I plot the information, and pass the array into a dataframe. 

Then I pass the dataframe into a csv file. 

 



