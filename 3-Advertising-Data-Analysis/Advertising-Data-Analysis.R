#Load Dataset
SamsungAdAnalysis

# Specify the significance level
alpha  <- 0.05 

#One Sample t-test – Greater than 55,000
t.test(SamsungAdAnalysis, mu=55000, alternative = "greater")

