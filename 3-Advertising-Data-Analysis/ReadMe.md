# 📊 Advertising Analysis: Hypothesis Testing on Samsung Ad Campaign  

*Using hypothesis testing to determine whether a new advertisement campaign (Ad2) significantly increases sales of the Samsung Galaxy S23 Ultra*  

---

## 📌 Overview  

This project applies **statistical hypothesis testing** to assess whether **Ad2 significantly increases weekly sales beyond 55,000 units**, compared to the existing advertisement (Ad1). Using **R**, a **one-sample t-test** is conducted to evaluate whether the mean sales of Ad2 are **statistically greater than 55,000 units** at a **5% significance level**.  

---

## 🛠 Key Features & Analysis  

✅ **Hypothesis Statements**  
   - **Null Hypothesis (H0):** The mean sales of Ad2 are **equal to** 55,000 units per week.  
   - **Alternative Hypothesis (H1):** The mean sales of Ad2 are **greater than** 55,000 units per week.  

✅ **Step-by-Step Statistical Testing**  
   - Define hypothesis statements.  
   - Check assumptions for **t-test** (sample size < 30, unknown population standard deviation).  
   - Conduct **one-sample t-test** to determine statistical significance.  

✅ **Data Analysis in R**  
   - **One-Sample t-test Calculation**:  
     ```r
     t.test(SamsungAdAnalysis, mu=55000, alternative = "greater")
     ```  
   - **Evaluation of p-value**:  
     - If **p-value < 0.05**, **reject H0** (Ad2 significantly increases sales).  
     - If **p-value ≥ 0.05**, **fail to reject H0** (no significant evidence that Ad2 increases sales).  

✅ **Summary of Findings & Conclusion**  
   - Statistical results show whether **Ad2 significantly improves sales performance** over Ad1.  

---

## 📊 Data Analysis Summary  

### 1️⃣ One-Sample T-Test Results  

- **Given Values:**  
  - Population Mean (µ0) = **55,000 units**  
  - Sample Size (n) = **20 weeks**  
  - Significance Level (α) = **0.05**  

- **R Output Results:**  
  - **Computed t-value:** **0.89397**  
  - **Computed p-value:** **0.1913**  
  - **95% Confidence Interval:** **(54,066.25, ∞)**  
  - **Sample Mean:** **55,999.5 units**  

### 2️⃣ Conclusion  

- Since **p-value (0.1913) > 0.05**, **fail to reject H0**.  
- The analysis does **not provide sufficient statistical evidence** to conclude that Ad2 significantly increases sales.  
- While Ad2’s **sample mean (55,999.5 units)** is slightly higher than 55,000, the results **are not statistically significant** at a **95% confidence level**.  
- **Final Interpretation:** Based on this dataset, we **cannot confirm that Ad2 has a significant positive impact on sales** over Ad1.  

---

## 📜 Key Learnings & Insights  

🔹 **Hypothesis Testing Application:** Applied **one-sample t-test** to a real-world business problem.  
🔹 **Decision-Making with p-values:** Demonstrated how to **evaluate marketing strategies** using data-driven insights.  
🔹 **Statistical Significance vs. Practical Relevance:** Even though **Ad2’s sales were slightly higher**, statistical testing revealed that the difference **was not significant enough**.  

This project is useful for **marketing analytics, A/B testing, and business decision-making**.  

---

## 🔧 Technologies Used  

- **Programming Language:** R  
- **Libraries:** stats  
- **Statistical Methods:** One-sample t-test, p-value computation  
- **Dataset:** SamsungAdAnalysis.xlsx  

