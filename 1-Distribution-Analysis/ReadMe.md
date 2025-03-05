# 🚀 Distribution Analysis of Vehicle Performance Data  
**📊 Analyzing trends in fuel efficiency and engine displacement using R and ggplot2**  

## 📌 Overview  
Understanding **vehicle performance** is crucial in automotive analytics. This project explores **the relationship between engine displacement, weight, and fuel efficiency** using **statistical visualization techniques** in R.  

Through **scatterplots and boxplots**, we analyze how different factors impact **miles per gallon (mpg)** and detect potential **anomalies** in the dataset. The project applies **descriptive statistics, hypothesis testing, and exploratory data analysis (EDA)** to uncover insights.  

---

## **🔍 Key Insights**  
✔ **Fuel Efficiency vs. Weight:** Heavier cars tend to have lower mpg, showing a **strong negative correlation**.  
✔ **Engine Performance & Cylinders:** Larger engines (**higher displacement**) are associated with **more cylinders**.  
✔ **Outliers Identified:** Certain **lightweight vehicles show unexpectedly low mpg**, indicating inefficiencies.  

These insights help in **fuel economy research, emission regulations, and predictive maintenance models** for automobiles.  

---

## 📂 Project Breakdown  

### **1️⃣ Exploring Data Distributions**  
- Analyzing **32 observations across 11 numerical variables**.  
- Understanding central tendency (**Mean, Median, Mode**) and dispersion (**Variance, Standard Deviation, IQR**).  

### **2️⃣ Scatterplot Analysis – Fuel Efficiency vs. Weight**  
- Strong **negative correlation** – heavier cars consume more fuel (**lower mpg**).  
- Visualizing trends using **ggplot2** with trend lines.  
- Detecting **anomalies** where **light cars have poor fuel efficiency**.  

### **3️⃣ Boxplot Analysis – Engine Displacement vs. Cylinder Count**  
- **Engine displacement increases** with more cylinders.  
- Statistical computations: **Mean (Blue), Median (Black), SD (Red), IQR (Purple)**.  
- Outliers observed in **4-cylinder category** with **unexpectedly high displacement**.  

### **4️⃣ Statistical Measures & Visualizations**  
- Applied `stat_summary()` to compute **mean, SD, and IQR** per vehicle group.  
- Used **color-coded visualizations** to enhance interpretability.  

---

## **📊 Data Summary**  

### **Fuel Efficiency (MPG) vs. Weight**  
✔ **Most vehicles fall between 2.5 to 3.5 (1000 lbs) in weight.**  
✔ **Lighter cars with low mpg suggest inefficiencies in design.**  
✔ **Anomalies detected in compact car segment.**  

📌 _(Add a sample scatterplot image here)_  

### **Engine Displacement vs. Cylinder Count**  
✔ **4-cylinder cars:** ~70 to 150 cu.in.  
✔ **6-cylinder cars:** ~140 to 230 cu.in.  
✔ **8-cylinder cars:** ~270 to 475 cu.in.  
✔ **Outliers observed** in small-engine vehicles with **unexpectedly high displacement**.  

📌 _(Add a sample boxplot image here)_  

---

## 🛠 Technologies Used  
🔹 **Programming Language:** R  
🔹 **Libraries:** ggplot2, dplyr  
🔹 **Statistical Methods:** Mean, Median, Standard Deviation, IQR  
🔹 **Visualization Techniques:** Scatterplots, Boxplots  

