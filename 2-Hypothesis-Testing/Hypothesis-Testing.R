
library(openintro)
library(ggplot2)
cl <- CholestrolLevel$After

#QQ Plot
qqnorm(cl,main = 'QQ plot of Cholestrollevel')
qqline(cl,col='red',lwd = 2)

#Histogram with normal curve
H <- ggplot(CholestrolLevel,aes(x=After))
H <- H + labs(title="Normality")+ theme(plot.title = element_text(hjust=0.5)) +
  xlab('Length')
H <- B + geom_histogram(binwidth=0.5, colour="black",aes( y=..density.., fill=..count..))
H <- H + stat_function(fun=dnorm,
                  color="red",
                  args=list(mean=mean(cl),
                            sd=sd(cl)))
H


#Calculate z parameters
# finding sample mean
mu <- mean(cl)
mu
# Population mean is given
mu0 <- 5.95 

# population standard deviation
sigma <- 0.897

#sample standard deviation
sd <- sd(cl)
sd

# Specify the significance level
alpha  <- 0.05 

# sample size
n <- nrow(CholestrolLevel)
n

#calculate z
z = (mu - mu0) / (sigma / sqrt(n))
z

#p-value
p <- 2*pnorm(abs(z),lower.tail=FALSE)
p

