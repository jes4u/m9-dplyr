# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')
install.packages('dplyr')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library("dplyr")
library("fueleconomy")

data("vehicles")
# Which Accura model has the best hwy MPG in 2015? (without method chaining)
mpg.2015 <- filter(vehicles, make == "Acura", year == 2015)
hwy2015 <- filter(vehicles, hwy == max(hwy))
best2015 <- select(vehicles, model)
# Which Accura model has the best hwy MPG in 2015? (nesting functions)


# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
