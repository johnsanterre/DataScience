# Dataset overview
# https://vincentarelbundock.github.io/Rdatasets/datasets.html

USArrests
data <- USArrests
#Whats going on?
help(USArrests)


#Feature construction
last.letter.vowel = c()
for(i in 1:dim(USArrests)[1]) {
  state.name = rownames(USArrests)[i]
  lenth.of.state.name = nchar(state.name)
  last.letter = substr(state.name,lenth.of.state.name, lenth.of.state.name)
  if (last.letter %in% c('a','e','i','o','u','y')) {
    last.letter.vowel<-c(last.letter.vowel,1)
  }
  else {
    last.letter.vowel<-c(last.letter.vowel,0)
  }
}

data = cbind(data,last.letter.vowel)


install.packages('randomForest')
library(randomForest)

#https://cran.r-project.org/web/packages/randomForest/randomForest.pdf

data(iris)
# https://www.rdocumentation.org/packages/utils/versions/3.4.3/topics/data

iris.rf <- randomForest(iris[,-5], iris[,5], prox=TRUE)
# -5 removes column 5
# 5 selects only column 5
# note use of = sign
# Note documentation doesn't indicate boolean type expected

importance(iris.rf)
iris.rf.2 <- randomForest(iris[,3:4], iris[,5], prox=TRUE)
iris.rf.2




#Plotting nice
iris.p <- classCenter(iris[,-5], iris[,5], iris.rf$prox)
plot(iris[,3], iris[,4], pch=21, xlab=names(iris)[3], ylab=names(iris)[4],
bg=c("red", "blue", "green")[as.numeric(factor(iris$Species))],
main="Iris Data with Prototypes")
points(iris.p[,3], iris.p[,4], pch=21, cex=2, bg=c("red", "blue", "green"))
