# create dataframe for menu and price
menudf <- data.frame(
  menu = c("Seafood Cocktail", "Super Deluxe", "Cheese",
           "Double Depperoni", "Supreme", "Meatlover",
           "GIN FREECE"),
  price = c(20, 15, 12, 15, 10, 18, 99)
)


# create masaorder function
masaorder <- function() {
  cat("Welcome!\nMasadora Pizza restaurant\nHere is our menu\n\n")
  print(menudf)
  
  # initial bill list dataframe
  bill_list <- data.frame()
  
  while (TRUE) {
    cat("\nEnter your selected pizza choice (0 = Done , 9 = recall menu)")
    # read a choice of menu as numeric and save to number_c
    number_c <- as.numeric(readline(": "))
    # if user put charactor to this readline will try again
    if (is.na(number_c)) {
      cat("Please input only number")
      next
      # if user put 9 will recall a menu list
    } else if (number_c == 9) {
      print(menudf)
      next
    }
    # put 9 for Done and check bill
    if (number_c == 0) {
      break
    }
    # if user not put a number in a range will try again
    if (!number_c %in% c(1: nrow(menudf),9)) {
      cat("Wrong , please try again")
      next
    }
    
    cat("\nDo you want more pizza? (Y/N)")
    y_n <- tolower(as.character(readline(": ")))
    
    #add all selected order to a new dataframe name order_row
    order_row <- data.frame(menu = menudf$menu[number_c],
                            price = menudf$price[number_c])
    
    #bind a new row to initial bill list
    bill_list <- rbind(bill_list,order_row)    
    
    # condition for yes/no question
    if (y_n == "n") {
      break
    } else if (y_n == "y") {
      next
    } else if (!y_n %in% c("y","n")) {
      cat("Wrong ,just only (Y/N) please try again")
      
    }

    
  }
  #when Done from select 0 or N will show a receipt
  cat("\nHere is your receipt\n")
  print(bill_list)
  total = sum(bill_list$price)
  cat(paste("\n\n  Total price  : ",total,"$"))
}

