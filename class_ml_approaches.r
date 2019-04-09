# adapted from https://www.analyticsvidhya.com/blog/2017/09/common-machine-learning-algorithms/

#normalized mpg
x <-cbind(mtcars[-1],(mtcars[1]-min(mtcars[1]))/(max(mtcars[1])-min(mtcars[1])) )

#linear
fit <- lm(mpg ~ ., data = x)
summary(fit)

#logistic Regression
fit <- glm(mpg ~ ., data = x, family='binomial')
summary(fit)

#decision Tree
library(rpart)
fit <- rpart(mpg ~ ., data = x, method="class")
summary(fit)

#SVM
library(e1071)
fit <-svm(mpg ~ ., data = x)
summary(fit)

#NB
fit <-naiveBayes(mpg ~ ., data = x)
summary(fit)

#kmeans
library(cluster)
fit <- kmeans(x, 3)
summary(fit)

#rf
library(randomForest)
fit <- randomForest(mpg ~ ., x,ntree=500)
summary(fit)

#pca
library(stats)
fit <- princomp(x, cor = TRUE)
summary(fit)

#library(parallel)
#library(doParallel)
#fitControl <- trainControl(method = "cv",number = 2, allowParallel = TRUE)
#cluster <- makeCluster(detectCores() - 1) 
#registerDoParallel(cluster)

#Gradiant Boosting Algorithms
library(caret)
fitControl <- trainControl( method = "repeatedcv", number = 4, repeats = 4)
fit <- train(mpg ~ ., data = x, method = "gbm", trControl = fitControl, verbose = FALSE)

#xgboost
TrainControl <- trainControl( method = "repeatedcv", number = 10, repeats = 4)
#linear
fit<- train(mpg ~ ., data = x, method = "xgbLinear", trControl = TrainControl, verbose = FALSE)
summary(fit)

#tree
fit<- train(mpg ~ ., data = x, method = "xgbTree", trControl = TrainControl, verbose = FALSE)
summary(fit)


#adapted from https://adv-r.hadley.nz/data-structures.html
typeof()
length()
attributes()

#1.
c(1, c(2, c(3, 4)))

#2.
x <- list(list(1, 2), c(3, 4))
y <- c(list(1, 2), c(3, 4))
str(x)
str(y)

#3.
is.list(mtcars)

#4.
a <- 1:3
attr(a, "x") <- "abcdef"
attr(a, "y") <- 4:6
str(attributes(a))
attributes(a[1])

#name setting
x <- c(a = 1, b = 2, c = 3)
x <- 1:3; names(x) <- c("a", "b", "c")
x <- setNames(1:3, c("a", "b", "c"))

#factors
x <- factor(c("a", "b", "b", "a"))
x
typeof(x)
attributes(x)

typeof(c("a", "b", "b", "a"))


a <- matrix(1:6, ncol = 3, nrow = 2)

df <- data.frame(
  x = 1:3,
  y = c("a", "b", "c"),
  stringsAsFactors = FALSE)
str(df)

cbind(df, data.frame(z = 3:1))
rbind(df, data.frame(x = 10, y = "z"))

good <- data.frame(a = 1:2, b = c("a", "b"))

df <- data.frame(x = 1:3)
df$y <- list(1:2, 1:3, 1:4)
df

#names
var <- "cyl"
mtcars$var
mtcars[[var]]


f <- function(x) x^2
f
formals(f)
body(f)
environment(f)




# globals
x <- 1
h <- function() {
  y <- 2
  i <- function() {
    z <- 3
    c(x, y, z)
  }
  i()
}
h()

rm(a)
#enviroment
j <- function() {
  if (!exists("a")) {
    a <- 1
  } else {
    a <- a + 1
  }
  a
}
j()
# now add << first then on second a assignment!

sapply(1:5, `+`, 3)
sapply(1:5, "+", 3)
sapply(1:5, sum, 3)

mtcars$h
mtcars$c

#lazy evaluation
f <- function(x) {
  10
}
stop("This is an error!")
f(stop("This is an error!"))

