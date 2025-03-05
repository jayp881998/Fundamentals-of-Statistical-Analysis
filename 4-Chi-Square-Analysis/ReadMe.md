# 📊 Chi-Squared Analysis: Passenger Capacity vs. Airbag Type  

*Using the Chi-Square test to determine if there is a significant correlation between passenger capacity and airbag type in vehicles*  

---

## 📌 Overview  

This project applies **Chi-Square hypothesis testing** to determine if there is a statistically significant relationship between **passenger capacity** and **airbag type** in vehicles. Using **R**, we perform the Chi-Square test on categorical data from `carsdatabase.xls` to assess whether these variables are **independent or correlated** at a **5% significance level**.  

---

## 🛠 Key Features & Analysis  

✅ **Hypothesis Statements**  
   - **Null Hypothesis (H0):** Passenger capacity and airbag type are **independent** (no correlation).  
   - **Alternative Hypothesis (H1):** Passenger capacity and airbag type are **correlated** (statistically significant relationship).  

✅ **Chi-Square Testing Steps**  
   1. Define hypotheses.  
   2. Compute **observed vs. expected frequencies**.  
   3. Calculate **Chi-Square statistic** using:  
      \[\chi^2 = \sum \frac{(O - E)^2}{E}\]
   4. Determine **degrees of freedom** using:  
      \[df = (rows - 1) \times (columns - 1)\]
   5. Compare p-value to **significance level (α = 0.05)** to accept/reject the null hypothesis.  

✅ **Data Analysis in R**  
   - **Chi-Square Test Calculation**:  
     ```r
     library(MASS)
     car.data <- data.frame(carsdatabase$Passengers, carsdatabase$AirBags)
     car.data = table(carsdatabase$AirBags, carsdatabase$Passengers)
     print(chisq.test(car.data))
     ```  
   - **p-value evaluation**:  
     - If **p-value < 0.05**, reject H0 (variables are correlated).  
     - If **p-value ≥ 0.05**, fail to reject H0 (variables are independent).  

✅ **Summary of Findings & Conclusion**  
   - The results **indicate whether passenger capacity influences the type of airbag installed** in vehicles.  

---

## 📊 Data Analysis Summary  

### 1️⃣ Chi-Square Test Results  

- **Observed Data:** Contingency table of **passenger capacity vs. airbag type**.  
- **Computed Values in R:**  
  - **Chi-Square Statistic (χ²):** **19.91**  
  - **Degrees of Freedom (df):** **10**  
  - **p-value:** **0.03011**  

### 2️⃣ Conclusion  

- Since **p-value (0.03011) < 0.05**, **reject H0**.  
- This indicates **a significant correlation** between **passenger capacity and airbag type**.  
- **Interpretation:**  
  - Larger vehicles may have **different airbag requirements** due to safety regulations.  
  - Smaller cars may **lack certain airbag configurations** found in higher-capacity vehicles.  

---

## 📜 Key Learnings & Insights  

🔹 **Real-World Application:** Understanding vehicle safety configurations based on passenger capacity.  
🔹 **Statistical Independence:** Demonstrated how to **test relationships between categorical variables**.  
🔹 **Decision-Making with Data:** Manufacturers can optimize **airbag deployment strategies** based on findings.  

This project is useful for **automotive safety research, market segmentation, and regulatory compliance analysis**.  

---

## 🔧 Technologies Used  

- **Programming Language:** R  
- **Libraries:** MASS  
- **Statistical Methods:** Chi-Square test, p-value computation  
- **Dataset:** `carsdatabase.xls`  


