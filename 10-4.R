# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
gates_money <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(gates_money)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- gates_money$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset
## Which organization has the longest time of grant?

# What was the mean grant value?
mean(gates_money$total_amount)

# What was the dollar amount of the largest grant?
max <- max(gates_money$total_amount)

# What was the dollar amount of the smallest grant?
min <- min(gates_money$total_amount)

# Which organization received the largest grant?
gates_money[gates_money$max, "organization"]

# Which organization received the smallest grant?
gates_money[gates_money$min, "organization"]

# How many grants were awarded in 2010?
gates_money[, gates_money$Grant.start.date = 2010]
