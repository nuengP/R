# library tidyverse
library(tidyverse)

# First plot
ggplot(mtcars, aes(hp,))+
  geom_histogram(bins = 10, fill = "red", alpha = 0.5)

p <- ggplot(mtcars, aes(hp))
p + geom_boxplot()

glimpse(diamonds)

ggplot(diamonds, aes(cut, fill = color))+
  geom_bar(position = "fill")

# Scatter Plot
set.seed(99)
small_diamonds <- sample_n(diamonds, 5000)

ggplot(small_diamonds, aes(carat, price)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  facet_wrap(~color, ncol = 2) +
  theme_minimal() +
  labs(title = "Relationship between carat and price by color",
       x = "carat",
       y = "Price USD",
       caption = "Source : Diamonds from ggplot2 package")




ggplot(small_diamonds, aes(carat, price, col=cut)) +
  geom_point() +
  facet_wrap(~ color, ncol = 2) +
  theme_minimal()