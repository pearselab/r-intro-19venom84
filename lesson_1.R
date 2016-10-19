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
