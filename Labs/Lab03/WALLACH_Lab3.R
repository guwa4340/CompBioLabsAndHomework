#Part 1:
#lab step #3 declare variables
chipbags<-5
guests<-8
#Lab Step 5
chipbags_per_guest<-0.4
#Step 7 Calculate chips Left Over
chipbags - (guests*chipbags_per_guest)

#Part 2:
#Step 8 Create Vectors
Self <- c(7,9,8,1,2,3,4,6,5)
Penny <- c(5,9,8,3,1,2,4,7,6)
Lenny <- c(6,5,4,9,8,7,3,2,1)
Stewie <- c(1,9,5,6,8,7,2,3,4)
#Step 8 Vector Indexing
PennyIV <- Penny[4]
#Create Datatable with Vectors
episoderatings <- cbind(Self,Penny,Lenny,Stewie)
#Compare structures
str(PennyIV)
#Structure = num 
str(Penny)
#Structure = num [1:9]
str(episoderatings)
#Structure = num [1:9 1:4]
#Create DataFrame
df1 <- data.frame(Self,Penny,Lenny,Stewie)
df2 <- as.data.frame(episoderatings)
str(df1)
str(df2)
#The difference in the dataframe is that it as row names, and is considered 9 observations of 4 variables, rather than the cbind() function that just created a 2d vector
#Step 14: Vectors of Strings
episode_names <- c("I","II","III","IV","V","VI","VII","VIII","IX")
help("row.names")
#Input Row Names into DataFrame
row.names(df2)<-episode_names
df2
#Access third row of matrix
episoderatings[3,]
#Access 4th column of datframe
df2[,4]
#Access specific elements
df2[5,1]
df2[2,2]
#Access Ranges of Elements
df2[4:6,]
df2[c(2,5,7),]
#Specific Rows and Columns all at once
df2[c(4,6),c(2,4)]
#Using Indexing to Assign New Values to Entries in A Matrix or DataFrame
df2[2,3] <- 10
df2
df2[5,3] <- 10
#Access Elements With Row and Column Names
df2["III","Penny"]
#Undo SWap with Row and Column Names
df2["II","Lenny"] <- 5
df2["V","Lenny"] <- 8 
df2
#Redo SWap with $variable names
df2$Lenny[2] <- 10
df2$Lenny[5] <- 10
df2
