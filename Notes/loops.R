library(tidyverse)
data("mtcars")

#print first 6 rows
head(mtcars)
#list variable(column) names
names(mtcars)

mean(mtcars$am)

#?mtcars in the console to pull up help window

#build a vector "car_means" with the means of all variables: length 11
#build empty vector
car_means <- vector('double', ncol(mtcars))
#or with NA makes easy to see what's wrong
car_means <- rep(NA, ncol(mtcars))

#for loop to add values to vector car_means
for(i in 1:ncol(mtcars)){
  car_means[i] <-mean(mtcars[,i])
}

#for loop to add values to vector car_means and keep column names
categorical_variables <- c('vs', 'am')

car_m <- c()
for(i in names(mtcars)){
  car_m <- c(car_m, mean(mtcars[,i]))
}
print(car_m)
#preserve with single bracket
mtcars[1]

#simplify with double bracket
mtcars[[1]]

#counts
count(mtcars)
#somethin else

