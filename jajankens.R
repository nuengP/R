

jajankens = function() {

jajanken <-c("Rock", "Scissors", "Paper")
scores <- 0

print("Welcome to Greed Island")
print("I'm Gon Freecss let's play Jajanken!")
user_n <- readline("What's your name? : ")
text = paste("Okay", user_n,"let's play!")
print(text)

print("And this is how to play Jajanken")
print("Type S as scissors")
print("Type R as rock")
print("Type P as paper")
print("Or Q for quit")

while (TRUE) {
    user_h <- tolower(readline("Choose your choice :"))
    gon_hf <- sample(jajanken,1)
    gon_h <- tolower(substr(gon_hf,1,1))
    if (gon_h == user_h){
      print(paste("GON choose :",gon_hf))
      print("DRAW")
    } else if (gon_h == "s" & user_h == "r") {
      scores <- scores + 1
      print(paste("GON choose :",gon_hf))
      print("You Win")
    } else if (gon_h == "r" & user_h == "p") {
      scores <- scores + 1
      print(paste("GON choose :",gon_hf))
      print("You Win")
    } else if (gon_h == "p" & user_h == "s") {
      scores <- scores + 1
      print(paste("GON choose :",gon_hf))
      print("You Win")
    } else if (user_h == "q"){
      print("Good bye my friend")
    } else if (!(user_h %in% c("q","s","r","p"))){
      print("Wrong Choice only S,R,P or Q = quit")
    } else {
      print("You Lose")
    }
    if (user_h == "q") {
      break
    }

  }
 print(paste(user_n,"got",scores,"points"))

}