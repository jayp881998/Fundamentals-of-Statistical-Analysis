# 📊 Stock Market Analysis with Regression Models  

*Applying statistical and predictive modeling to analyze stock returns using R*  

---

## 📌 Overview  

This project examines **scaled stock returns** using **T-tests, Simple Linear Regression, and Multiple Linear Regression**. The goal is to determine whether financial factors such as **dividends, market overview, earnings ranking, debt-to-equity ratio, and market capitalization** significantly influence stock returns.  

✅ **Dataset:** `Stock_MLRAnalysis.xlsx` (180 observations, 7 variables)  
✅ **Techniques Used:**  
   - **T-Test** → Test if mean stock return equals 300  
   - **Simple Linear Regression** → Effect of Dividend on Stock Return  
   - **Multiple Linear Regression** → Predicting Stock Returns using multiple factors  

---

## 🛠 Key Features & Analysis  

### **1️⃣ T-Test: Is the Mean Stock Return 300?**  

#### **Hypothesis**  
- **H₀:** Mean scaled stock return = 300  
- **H₁:** Mean scaled stock return ≠ 300  

#### **Findings**  
- **p-value:** `< 2.2e-16` → **Stock returns are significantly lower than 300.**  
- **Test Statistic (t-value):** `-10.511`  

#### **R Code**  
```r
t.test(data$stock_return_scaled, mu = 300)
```

---

### **2️⃣ Simple Linear Regression: Dividend vs. Stock Return**  

#### **Model Specification**  
```r
stock_return_scaled = β0 + β1 * dividend + ϵ
```

#### **Findings**  
- **Coefficient (β₁ for dividend):** `-5.118`  
- **p-value:** `0.801` (Not significant)  
- **R-squared:** `0.0003594` → **Dividend explains only 0.04% of variance** in stock returns.  

#### **R Code**  
```r
linear_model <- lm(stock_return_scaled ~ dividend, data = data)
summary(linear_model)
```

---

### **3️⃣ Multiple Linear Regression: All Predictors vs. Stock Return**  

#### **Model Specification**  
```r
stock_return_scaled = β0 + β1 * return + β2 * market_overview + β3 * dividend + 
                      β4 * earnings_ranking + β5 * debt_to_equity + β6 * marketcap + ϵ
```

#### **Findings**  
- **Significant Predictors:**  
  - **Market Overview** (p-value = `0.000121`)  
  - **Debt-to-Equity Ratio** (p-value = `0.001`)  
  - **Market Cap** (p-value < `2e-16`)  
- **Non-Significant Predictors:**  
  - Dividend (p = 0.479)  
  - Earnings Ranking (p = 0.553)  
- **R-squared:** `0.647` → **Model explains 64.7% of stock return variance.**  

#### **R Code**  
```r
multiple_linear_model <- lm(stock_return_scaled ~ return + market_overview + dividend +
                              earnings_ranking + debt_to_equity + marketcap, data = data)
summary(multiple_linear_model)
```

---

## 📜 Key Insights & Recommendations  

✔ **Stock returns are significantly lower than 300** (T-test result).  
✔ **Dividend does NOT significantly affect stock returns** (Simple Linear Regression).  
✔ **Market Overview, Debt-to-Equity Ratio, and Market Cap are significant predictors** (Multivariate Regression).  

### **Recommendations for Investors & Analysts**  
✅ **Consider Additional Factors:** Explore **economic trends, inflation, and industry-specific influences**.  
✅ **Improve Model Accuracy:** Apply **log transformations** to address skewness in stock returns.  
✅ **Validate the Model:** Use **cross-validation techniques** to ensure model robustness.  

---

## **🔧 Technologies Used**  

- **Programming Language:** R  
- **Libraries:** ggplot2, stats  
- **Statistical Methods:** T-tests, Simple & Multiple Linear Regression  
- **Dataset:** `Stock_MLRAnalysis.xlsx`  

---

## **🚀 How to Use This Project**  

1️⃣ **Download the dataset** and save it in your working directory.  
2️⃣ **Run the R script in RStudio:**  
```r
source("StockAnalysis.R")
```
3️⃣ **Analyze the results and visualizations.**  

---

This **README.md** is **GitHub-ready**, fully structured, and easy to read.  

Just **download and add it to your GitHub repository**. 🚀  
