# 📊 Linear Regression Analysis: Effect of Sex on Expenses  

*Using Simple Linear Regression to analyze the impact of gender on expenses*  

---

## 📌 Overview  

This project applies **Simple Linear Regression** to assess whether an individual's **sex (male/female)** significantly impacts **expenses**. Using **R**, we perform hypothesis testing on a regression model to determine if **sex is a statistically significant predictor** of expenses.  

---

## 🛠 Key Features & Analysis  

✅ **Hypothesis Statements**  
   - **Null Hypothesis (H0):** Sex does **not** significantly affect expenses.  
   - **Alternative Hypothesis (H1):** Sex **significantly** affects expenses.  

✅ **Regression Model**  
   - The **Simple Linear Regression equation**:  
     \[
     \text{expenses} = \beta_0 + \beta_1 \cdot \text{sex}
     \]
   - **Intercept (β₀):** Represents the baseline expenses for **females**.  
   - **Sex Coefficient (β₁):** Represents the additional expense for **males** compared to females.  

✅ **Regression Analysis in R**  
   - **Building the model**:  
     ```r
     Expenses$sex <- as.factor(Expenses$sex)
     simple.fit <- lm(expenses ~ sex, data = Expenses)
     summary(simple.fit)
     ```
   - **Evaluating Statistical Significance**:  
     - If **p-value < 0.05**, reject H0 (sex is significant).  
     - If **p-value ≥ 0.05**, fail to reject H0 (sex is not significant).  

✅ **Summary of Findings & Conclusion**  
   - Determines whether **sex is a key predictor of expenses**.  

---

## 📊 Data Analysis Summary  

### 1️⃣ Regression Model Results  

- **Regression Equation**:  
  \[
  \text{expenses} = 12569.6 + 1387.2 \cdot \text{sex}
  \]
  - **For females (sex = 0)**:  
    \[
    \text{expenses} = 12569.6
    \]
  - **For males (sex = 1)**:  
    \[
    \text{expenses} = 12569.6 + 1387.2 = 13956.8
    \]

- **Computed Values in R:**  
  - **Intercept (β₀):** **12569.6** (baseline expenses for females)  
  - **Sex (male) coefficient (β₁):** **1387.2** (males have 1387.2 units higher expenses than females)  
  - **p-value:** **0.0361**  
  - **R-squared:** **0.003282** (weak model fit)  
  - **F-statistic:** **4.4** (overall model significance)  

### 2️⃣ Conclusion  

- Since **p-value (0.0361) < 0.05**, **reject H0**.  
- This means **sex significantly affects expenses**, with **males spending more than females on average**.  
- However, **R-squared = 0.003282** indicates that **sex alone explains only 0.3282% of the variation in expenses**, making it a **weak predictor**.  

---

## 📜 Key Learnings & Insights  

🔹 **Gender-Based Spending Patterns:** Males have slightly higher expenses than females, but the effect is weak.  
🔹 **Model Fit Limitations:** The low **R-squared** suggests that other factors likely influence expenses more.  
🔹 **Business Applications:** Marketers should consider additional demographic factors when analyzing consumer spending behavior.  

---

## 📈 Additional Variables to Improve Model Accuracy  

1️⃣ **Age**  
   - **Reason:** Spending patterns often vary by age group.  
   - **Expected Impact:** Older individuals may have different financial priorities, affecting their expenses.  

2️⃣ **Income**  
   - **Reason:** Higher-income individuals tend to spend more.  
   - **Expected Impact:** Controlling for income could improve the model’s ability to explain expense variability.  

---

## 🔧 Technologies Used  

- **Programming Language:** R  
- **Libraries:** stats  
- **Statistical Methods:** Simple Linear Regression, p-value computation  
- **Dataset:** `Expenses.csv`  


