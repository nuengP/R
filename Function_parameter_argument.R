# create out first function

greeting <- function( ){
  print("Hello World!")
}

greeting_name <- function(name = "Toy", age = 25) {
  print( paste("Hello!", name))
  print( paste("Age:", age))
}

func <- function() {
  greeting()
  greeting_name("Toy")
}