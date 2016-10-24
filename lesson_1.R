################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

# cat - concatenate and print
# prints output to a file or the screen
x <- c(1,2,3)
y <- c(7,8,9)
cat(x,y)
# output is list of 1 2 3 5 6 7

# cbind - uses a sequence that contains vector, matrix, or data-frame and combines it
#         by columns or rows - in that order - (rbind is in different orientation)
cbind(x,y)
# output is in columns as below
#      x y
# [1,] 1 5
# [2,] 2 6
# [3,] 3 7
# adding a third vector
z <- c(10,11,12)
cbind(x,y,z)
# output now is in columns like this:
#      x y z
# [1,] 1 5 10
# [2,] 2 6 11
# [3,] 3 7 12

# col - column indexes
# gives a matrix of integers that indicates the column number in a matrix
# I am not sure why we would do this, but have faith that something will come up some day
m <- matrix(13:28, nrow = 4, ncol = 4)
col(m)
# this will return a matrix with all values in column 1 as "1", all in column 2 as "2"
# etc.

# cut - convert number to factor
# divides a range of values into a number of bins and then cateogrizes each data point
# into the proper bin
NumtoFac <- c(5:24)
NumtoFac
# returns a sequence of numbers
# [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
cut(NumtoFac, breaks = 5, labels = c("puny", "small", "about right", "kind of big", "monstrous"))
# returns the above numbers in a list of categories
# [1] puny        puny        puny        puny        small       small       small 
# [8] small       about right about right about right about right kind of big kind of big
# [15] kind of big kind of big monstrous   monstrous   monstrous   monstrous
# Levels: puny small about right kind of big monstrous

# diff - lagged differences
# gives a list of differences between values
# given some values
dif <- c(5,10,5,15,5,25,5,35)
# default values will subtract the first from the second, second from the third, etc.
diff(dif)
# result would be
# [1]   5  -5  10 -10  20 -20  30
# can skip values by changing the lag
diff(dif, lag = 2)
# gives result 
# [1]  0  5  0 10  0 10
# can change the level of the differences
diff(dif, differences = 2)
# result would be
# [1] -10  15 -20  30 -40  50  (this is the difference of the differences)

# dim - dimensions of an object
# returns the row and column numbers of a matrix (or other R object)
# given a matrix
exmple <- matrix(21:40, nrow = 5, ncol = 4)
exmple
# returns matrix of
#      [,1] [,2] [,3] [,4]
# [1,]   21   26   31   36
# [2,]   22   27   32   37
# [3,]   23   28   33   38
# [4,]   24   29   34   39
# [5,]   25   30   35   40
dim(exmple)
# gives the numbers of rows and columns
# [1] 5 4

# rownames, colnames - row and column names
# assigns names to rows and columns
rc <- matrix(1:4, 2)
rownames(rc) <- c("x", "y")
colnames(rc) <- c("xx", "yy")
rc
# returns the following:
#   xx yy
# x  1  3
# y  2  4

# expand.grid - creates a list with combinations of sub-factors
# so if you give (say) three variables
region <- c("Asian", "Central American", "African")
family <- c("Colubridae", "Viperidae", "Elapidae")
diet <- c("toads", "snakes", "lizards")
expand.grid(region, family, diet)
# returns the following
#                Var1       Var2    Var3
# 1             Asian Colubridae   toads
# 2  Central American Colubridae   toads
# 3           African Colubridae   toads
# 4             Asian  Viperidae   toads
# 5  Central American  Viperidae   toads
# 6           African  Viperidae   toads
# 7             Asian   Elapidae   toads
# 8  Central American   Elapidae   toads
# 9           African   Elapidae   toads
# 10            Asian Colubridae  snakes
# 11 Central American Colubridae  snakes
# 12          African Colubridae  snakes
# 13            Asian  Viperidae  snakes
# 14 Central American  Viperidae  snakes
# 15          African  Viperidae  snakes
# 16            Asian   Elapidae  snakes
# 17 Central American   Elapidae  snakes
# 18          African   Elapidae  snakes
# 19            Asian Colubridae lizards
# 20 Central American Colubridae lizards
# 21          African Colubridae lizards
# 22            Asian  Viperidae lizards
# 23 Central American  Viperidae lizards
# 24          African  Viperidae lizards
# 25            Asian   Elapidae lizards
# 26 Central American   Elapidae lizards
# 27          African   Elapidae lizards



################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."
