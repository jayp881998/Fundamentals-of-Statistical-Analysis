library(ggplot2)

# Read the dataset
data <- Stock_MLRAnalysis

describe(data)

# Compute basic statistics
summary_stats <- summary(data)

summary_stats

data_new <- data[sapply(data, is.numeric)]


# Compute basic statistics: Mean, SD, Min, and Max
mean_vals <- colMeans(data_new, na.rm = TRUE)
sd_vals <- apply(data_new, 2, sd, na.rm = TRUE)
min_vals <- apply(data_new, 2, min, na.rm = TRUE)
max_vals <- apply(data_new, 2, max, na.rm = TRUE)


# Combine the statistics into a data frame
basic_stats <- data.frame(
  Variable = names(mean_vals),
  Mean = mean_vals,
  Standard_Deviation = sd_vals,
  Minimum = min_vals,
  Maximum = max_vals
)

# Display the results
print(basic_stats)

# Load necessary library
library(ggplot2)

# Define the histogram with normality overlay for 'stock_return_scaled'
H <- ggplot(data, aes(x = stock_return_scaled)) +
  labs(title = "Histogram of Scaled Stock Returns with Normality Curve",
       x = 'Scaled Stock Returns',
       y = 'Density') +
  theme(plot.title = element_text(hjust = .5)) +
  geom_histogram(binwidth = 50, fill = 'maroon',colour = "black", aes(y = ..density.., fill = ..count..)) +
  stat_function(fun = dnorm,
                color = "red",
                size = 1,
                args = list(mean = mean(Stock_MLRAnalysis$stock_return_scaled), 
                            sd = sd(Stock_MLRAnalysis$stock_return_scaled)))

# Display the histogram
print(H)


# Perform a one-sample t-test
t_test_result <- t.test(data$stock_return_scaled, mu = 300)

# Display the t-test result
print(t_test_result)

# Perform the simple linear regression
linear_model <- lm(stock_return_scaled ~ dividend, data = data)

# Display the summary of the linear regression
summary(linear_model)

# Perform the multiple linear regression
multiple_linear_model <- lm(stock_return_scaled ~ return + market_overview + dividend +
                              earnings_ranking + debt_to_equity + marketcap, data = data)

# Display the summary of the multiple linear regression
summary(multiple_linear_model)


