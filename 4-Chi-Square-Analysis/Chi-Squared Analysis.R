#Load Libraries
library(MASS) 

# Create a data frame from the main data set.
car.data <- data.frame(carsdatabase$Passengers, carsdatabase$AirBags)

# Create a table with the needed variables.
car.data = table(carsdatabase$AirBags,carsdatabase$Passengers)
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))
