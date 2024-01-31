# create out first function

greeting <- function( ){
  print("Hello World!")
}

greeting_name <- function(name) {
  print( paste("Hello!", name))
}

func <- function() {
  greeting()
  greeting_name("Toy")
}