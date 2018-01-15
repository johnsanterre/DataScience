# How to think about ranking
# Author: John W. Santerre

M = USJudgeRatings

dim(M)

rowSums(M)


colSums(M)
data.frame(lapply(M, function(x) (sum(x))))

rowSums(M)[order(rowSums(M))]
colSums(M)[order(colSums(M))]

# Convert to ranking vector
?rank
?order

order(M$CONT, decreasing=TRUE)

                  
data.frame(lapply(M, function(x) (rank(-x))))
library(reshape2)                 
df <- melt(M2)                 
df$rowid <- 1:43
library(ggplot2)
ggplot(df, aes(variable, value, group=factor(rowid))) + geom_line(aes(color=factor(rowid)))
