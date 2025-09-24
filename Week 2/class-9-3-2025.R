library(tidyverse)
data("mtcars")
head(mtcars)

mean(mtcars$am)
mean(mtcars$vs)
mean(mtcars$carb)

categorical_variables <- c('vs','am')

## Example with growing vector as we go
car_m <- c()
for(i in names(mtcars)){
  if(i %in% categorical_variables){
    car_m <- c(car_m, NA)
  }else{
    car_m <- c(car_m, mean(mtcars[,i]))
  }
}
car_m

car_means <- vector('double', ncol(mtcars))
car_means <- rep(NA, ncol(mtcars))
car_means

for(i in 1:ncol(mtcars)){
  car_means[i] <- mean(mtcars[,i])
}
car_means

some_vector <- c('this', 'is', 'example','text')
for(i in 1:4){
  print(some_vector[i])
}

double_mean <- function(x) mean(2*x)

mtcars[1]
mtcars[[1]]

