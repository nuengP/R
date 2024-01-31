# for
friends <- c("Toy","John","Mary","Anna","David")

for (friend in friends) {
  print( paste("Hi!",friend))
}


#vectorization

paste("Hi", friends)

nums <- c(5, 10, 12, 20, 25)
nums <- nums + 2

(nums <- nums -2)
