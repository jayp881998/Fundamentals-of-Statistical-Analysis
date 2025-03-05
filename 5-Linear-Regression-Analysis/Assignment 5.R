
Expenses

Expenses$sex <- as.factor(Expenses$sex)

#Simple Regression Model
simple.fit<-lm(expenses ~ sex, data = Expenses)

LinearModel<-simple.fit
summary(LinearModel)



