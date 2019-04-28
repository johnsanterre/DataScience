## Example 1

#Step 1. Tools 
#install.packages('randomForest')
library(randomForest)
#https://cran.r-project.org/web/packages/randomForest/randomForest.pdf

#Step 2. Set up
df <- iris
# https://www.rdocumentation.org/packages/utils/versions/3.4.3/topics/data
M <- df[,-5] #Matrix, so remove target, i.e. type of flower
L <- df[,5] #labels, so select only target i.e. type of flower

# Step 3. Training and Testing
iris.rf <- randomForest(M, L)

# Step 4. Evaluate
iris.rf
iris.rf$importance

# https://stats.stackexchange.com/questions/41443/how-to-actually-plot-a-sample-tree-from-randomforestgettree


## Example 2

# 1. Tools
library(pROC)
library(randomForest)
library(ggplot2)
library(reshape2)

# 2. Load data
file_loc <-"http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv"
wine <- read.csv(url(file_loc), sep=";")

# 3. Preliminary Data Viz.
ggplot(data = melt(wine), mapping = aes(x = value)) + geom_histogram(bins = 20) + facet_wrap(~variable, scales = 'free_x')

# 4. Train classifer (clf)
clf_1 <- randomForest(wine[,-12],wine[,12])
clf_1
# 5. Iterate
clf_1a <- randomForest(wine[,-12],as.factor(wine[,12]))
clf_1a
clf_2 <- randomForest(wine[,-12],as.factor(wine[,12]>=6))
clf_2

# 6. Extend Analysis of CLF

#6a. Set varibles to reflect lessons learned above
num_exmps = nrow(wine)
L = replace(integer(num_exmps), wine[,12]>=6, 1)
M <- wine[,-12]

#7. Use Cross validation to build model
train_idx <- sample(c(1:num_exmps), size = num_exmps * 0.7, replace = FALSE)
clf_3 <- randomForest(M[train_idx,],as.factor(L[train_idx]))
#8. Generate propsoed answers using Cross validation
pred <- predict(clf_3, M[-train_idx,],type="prob")

#9. Plot ROC metric
plot(roc(L[-train_idx], as.numeric(pred[,1])))
# ROC info https://en.wikipedia.org/wiki/Receiver_operating_characteristic





