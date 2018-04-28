## Data Science


visit : https://gitpitch.com/johnsanterre/DataScience/master

---
### Intro:
  - My Path: English BA -> Computer Sci. PhD (i.e. long road)
  - My Background:  Jump starting teams and groups (Ecolabs, Argonne, Triggr Health, SAP, Data Science for Social Good.)
  - I am Coach/enabler >> disciplinarian
  - You need to be: patient, diligent, self starting

---

In order importance for both learning and grading
1.  Async and Swirl
2.  Book materials
3.  Me
---

### Class Notes:
1. There are no labs(i.e. they are not manditory).
2. Simply logging into the platform for live sessions will earn 1/2 of your participation grade.  The rest will come from actual participation in the class.
3. Homework for 1 is due before the start of Live Session 2. 
4. All late homework gets a 20% deduction.  
5. Its not too early to start thinking about topic for final project.(https://archive.ics.uci.edu/ml/index.php)
6. This class starts slow then builds in speed.  
7. You are  encouraged to collaborate on homeowork, but please make note of it on your submission.  
8. If you learn a bunch and develop your skills you will definitely get a good grade regardless of what path it takes to get there.
9. My goal is to give you a one degree of distance to the stuff thats happening in the book.
10. There is a lot of technical syntax to consider in this class, my hope is our discussions will be more about the big overview and how to integrate DS into work.
11. Start groups now to help with homework questions.

---

Crucial resources:

If you are just getting started with R.  Install r studio and install the swirl package.  
http://swirlstats.com/students.html

We will use:  install_from_swirl("R Programming")

We will complete the first 15 assignments over the first 4 weeks.  
---

If you are a SE(sofware engineer) or just want to know WHY?

The link below explians how R works under the hood. 

https://adv-r.hadley.nz/index.html

---
If you want an overview of Machine Learning:

https://www.youtube.com/watch?v=-O01G3tSYpU&feature=youtu.be

---

Disclaimer:  I have dysgraphia. It's a kind of visual blindness for symbols.  What this means: Get on github and fix my typos.  


Notes:

https://help.github.com/articles/basic-writing-and-formatting-syntax/

https://www.datatau.com

https://news.ycombinator.com

https://www.kdnuggets.com

https://learnxinyminutes.com/docs/r/

---
### Breakout One

This will be the most open ended of our work this semester and it will give me a chance to get to know you and to know each other.

It’s fairly standard to thinking of the following specialists positions in data science. (Programer, Statistician, Domain expert/Business lead, Machine Learning) 

1. What position do you want to have when you are done with your schooling? 

2. Write job descriptions for each position for starting a data science team for self driving cars.

Why this perspective is important:
- Data Science == Programing, Statistics, Math, Domain/Business Specialist, 
- Programing == Data engineer, code optimization, Object Oriented design, Scientific Programing
- Statistics == Bayesian, Frequentist, Statistical Machine Learning
- Math == Numerical Linear Algebra, Wavelets, Signal processing, 


With so many ways to contribute, it’s hard to figure out how to be you versus how to be someone else.  

---
# Quiz example
1. Load the cars dataset.
2. What is this data set?
3. Display the 1st column.
4. What are the column names.
5. How many rows are there?
6. Display the second row.
7. What row number/s has/have entry speed == 16?
8. How many row number/s has/have entry speed == 16?
9. Create a new dataframe composed of all rows where where Speed > 15.
10.Create a new dataframe with all examples where Speed <23 and dist>25.

---
### How to learn:
- Some algorithms are designed best run on silicon and others on carbon. 
- You need to develop ways of thinking about the problem that allows you to apply your techniques.
- What question would you like to be able to answer with these skills that you can't currently?  
- Stackoverflow life cycle (1. Can't find question, 2. Finding answers, 3. Realizing many answers are poor.)
---
What is machine learning:
- There is no simple solution to statistical validity.  There is no function, but rather a conversation.
- Currently four ways of thinking about data. Tall, flat, square, blocks

Language choice:
- coding is not about syntax( Syntax is how you communicate correctly, regardless if its jibberish.)
- python > pandas
- scripting versus programing, interactive environment versus output
- Python packages versus R repo

---

Tendency to treat ML practitioners as "Keepers of the algorithms", with many magic tricks up thier sleave. Like magic tricks when people figutre out how an algorithm made its decision, they often feel like the impossilble was just a cheap trick.  

Domanine Agnostic Machine Learning:

https://www.youtube.com/watch?v=bL4b1sGnILU

---
You will use regularly

- Random Forest: "a collection of decision trees with controlled variance"
  
  Wiki: https://en.wikipedia.org/wiki/Random_forest
  
  Python: http://blog.yhat.com/posts/random-forests-in-python.html
  
  paper: https://www.stat.berkeley.edu/~breiman/randomforest2001.pdf

  Notes:  Yali Amit, a co-creater is head of Stat. Dept. at UChicago

--- 

- Lasso

  Wiki: https://en.wikipedia.org/wiki/Lasso_(statistics)
  
  https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-ridge-lasso-regression-python/

--- 

- Cross Validation
  Stratified Cross validation

  Wiki: https://en.wikipedia.org/wiki/Cross-validation_(statistics)

  R: https://machinelearningmastery.com/how-to-estimate-model-accuracy-in-r-using-the-caret-package/
  
- Data cleaning

  https://cran.r-project.org/doc/contrib/de_Jonge+van_der_Loo-Introduction_to_data_cleaning_with_R.pdf

---  
Industry leading
- XGBoost
- Neural Network




---
### Possibly Intersting
https://www.r-bloggers.com/make-rstudio-look-the-way-you-want-because-beauty-matters/amp/

https://www.r-bloggers.com/a-maze-solving-minecraft-robot-in-r/

https://www.computerworld.com/article/2497464/business-intelligence/top-r-language-resources-to-improve-your-data-skills.html

https://rstudio.github.io/r2d3/

https://www.r-bloggers.com/why-you-should-master-the-small-multiple-chart/amp/

https://www.r-bloggers.com/how-to-map-public-debt-data-with-ggplot2/

https://www.r-bloggers.com/how-to-set-up-a-sparklyr-cluster-in-5-minutes/amp/

https://datascienceplus.com/3-simple-data-transformation-tricks-in-r-that-are-often-not-used/

https://lifehacker.com/become-a-deep-learning-coder-from-scratch-in-under-a-ye-1822763353




---
Easy Implimentation of Multiple ML algorithms
~~~~
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

~~~~




