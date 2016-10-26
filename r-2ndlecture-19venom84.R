# test
# 1. Write a loop that prints out the numbers from 20 to 10
for(a in 20:10) {
  print(a)
}

# 2.  Write a loop that prints out only the numbers from 20 to 10 that are even
for(b in 20:10) {
  if(b %% 2 == 0)
    print(b)
}

# 3.  Write a function that calculates whether a number is a prime number 
#     (hint: what does 2 %% 3 give you?)
prime <- function(c) {if(c == 2) {
  TRUE
} else if(any(c %% 2:(c-1) == 0)) {
    FALSE
} else {
    TRUE
}
}
prime(101)

# 4.  Write a loop that prints out the numbers from 1 to 20, printing "Good: NUMBER" 
#     if the number is divisible by five and "Job: NUMBER" if the number is prime,
#     and nothing otherwise
prime <- function(d) {if(d == 2) {
  TRUE
  } else if(any(d %% 2:(d-1) == 0)) {
  FALSE
  } else {
  TRUE
  }
}
for(d in 1:20) {if(d %% 5 == 0) {
    cat("Good: NUMBER",d,"\n")
  } else {if(prime(d) == TRUE) {
    cat("Job: NUMBER",d,"\n")
  } else {cat("",d,"\n")
  }
}
}

# 5.  A biologist is modelling population growth using a Gompertz curve, which is 
#     defined as y(t) = a*e^−b*e^−c*t where y is population size, t is time, a and b 
#     are parameters, and e is the exponential function. Write them a function that 
#     calculates population size at any time for any values of its parameters.
