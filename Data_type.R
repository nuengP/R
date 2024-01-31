##Data types

## 1. Numeric
age <- 32
print (age)
class (age)

## 2. character
my_name <- "Toy"
my_university <- 'KMITL'
print(my_name)
print(my_university)
class(my_name) ; class(my_university)

## 3. logical
result <- 1 + 1 == 2
print(result)
class(result)

## 4. factor
animals <- c("Dog","Cat","Cat","Bird")
class(animals)
animals <- factor(animals)
class(animals)

## 5. date
time_now <- Sys.time()
class(time_now)
