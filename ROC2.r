library(pROC)
library(randomForest)
library(ggplot2)
library(reshape2)


#load data
file_loc <-"http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv"
wine <- read.csv(url(file_loc), sep=";") 



#plot histograms
ggplot(data = melt(wine), mapping = aes(x = value)) + geom_histogram(bins = 20) + facet_wrap(~variable, scales = 'free_x')

#test RF
clf_1 <- randomForest(wine[,-12],wine[,12])
clf_2 <- randomForest(wine[,-12],as.factor(wine[,12]>=6))


# Test ROC RF
num_exmps = nrow(wine)
L = replace(integer(num_exmps), wine[,12]>=6, 1)
M <- wine[,-12]

train_idx <- sample(c(1:num_exmps), size = num_exmps * 0.7, replace = FALSE)

clf_3 <- randomForest(M[train_idx,],as.factor(L[train_idx]))
pred <- predict(clf_3, M[-train_idx,],type="prob")
plot(roc(L[-train_idx], as.numeric(pred[,1])))

#https://en.wikipedia.org/wiki/Receiver_operating_characteristic
#https://www.kaggle.com/vishalyo990/prediction-of-quality-of-wine
