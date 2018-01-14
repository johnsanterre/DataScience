#### R commands in order:

- head
- tail
- str
- dim
- summary
- read.table
- class
- gwd
- setwd

setwd()
dir.create()
getwd()
ls()
dir()
file.create()
list.files()
ls()
file.exists()
file.info("mytest.R")$mode
file.rename("mytest.R", "mytest2.R")
file.copy()
file.path()  ???dir.create
dir.create
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
seq(1,20)
seq(5, 10, length=30)
length()
seq(along.with = my_seq)
seq_along(my_seq)
rep(1, times=10)
Vectors come in two different flavors: atomic vectors and lists
c(1,2,-5)<1
sum(num_vect >= 6)
paste(my_char, collapse = " ")
paste(1:3, c("X", "Y", "Z"), sep = "")
LETTERS
is.na
NaN
NA
vect <- c(foo = 11, bar = 2, norf = NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect2, vec) 
dim(my_vector) <- c(4, 5)
class(my_vector)
cbind(patients, my_matrix)
implicit coercion
colnames()
