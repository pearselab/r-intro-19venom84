dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) <- "dog"
fido <- list(length=50, weight=45, breed="Heinz 57")
class(fido) <- "dog"

# creating a new dog, giving the weight and breed
new.dog <- function(weight,breed){
  output <- list(weight=weight, breed=breed)
  class(output) <- "dog"
  return(output)
}
new.dog(60,"puppy")

# dog racing exercise
dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) <- "dog"
fido <- list(length=50, weight=45, breed="Heinz 57")
class(fido) <- "dog"
cerberus <- list(length=23, weight=100, breed="hellhound")
class(cerberus) <- "dog"
bob <- list(length=44, weight=200, breed="couch potato")
class(bob) <- "dog"
race <- function(first,second){
  if(!inherits(first,"dog") | !inherits(second,"dog"))
    stop("You haven't given me two dogs")
  if(first$weight < second$weight) {
    print("First dog won!")
    return(first)
  }
  print("Second dog won!")
  return(second)
}
race(dexter,fido)
race(dexter,cerberus)
race(cerberus,fido)
race(bob,cerberus)

# printing the characteristics of specific dogs
dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) <- "dog"
fido <- list(length=50, weight=45, breed="Heinz 57")
class(fido) <- "dog"
cerberus <- list(length=23, weight=100, breed="hellhound")
class(cerberus) <- "dog"
bob <- list(length=44, weight=200, breed="couch potato")
class(bob) <- "dog"
print.dog <- function(x, ...) {
  cat("This ", x$breed, "weighs ", x$weight, "kg\n")
}
print.dog(dexter)
print.dog(bob)
print.dog(cerberus)
print.dog(fido)

# creating a generic to return info even if a specific known dog is not present
bob <- list(length=44, weight=200, breed="couch potato")
class(bob) <- "dog"
dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) <- "dog"
askdog <- function(x) UseMethod("askdog")
askdog.default <- function(x) return("Woof! No idea! Woof!")
askdog.numeric <- function(x) return("Woof! A number! Woof!")
askdog.dog <- function(x) return("Woof! A friend! Woof!")
askdog(dexter)
askdog(bob)
askdog("hey, dog! get outta my yard")
askdog(47)

# using with other classes
dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) <- c("dog","mammal")
brian <- list(length=30, width=40)
class(brian) <- c("binturong","mammal")
print.mammal <- function(x, ...) cat("What a great mammal!\n")
print.mammal(dexter)
print.mammal(brian)