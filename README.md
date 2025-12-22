# 📊 Telecom Customer Churn Analysis
Product & Business Data Analytics Project
Predicting customer churn and recommending product strategies using Python, SQL, and Tableau.

## 🧠 Problem Statement
Customer churn is a critical challenge for subscription-based telecom businesses.
This project aims to identify **key drivers of churn, high-risk customer segments, and actionable retention strategies** using data analytics and machine learning.

## 🛠️ Tools & Technologies
* SQL – churn metrics & segmentation
* Python (Pandas, NumPy, Scikit-learn) – data cleaning, EDA, predictive modeling
* Tableau Public – interactive dashboard
* Git/GitHub – version control


## 📈 Dataset
* ~7,000 telecom customers
* Mix of categorical and numerical features
* Target variable: Churn Label (Yes/No)


## 🔍 Key Business Insights
* Overall churn rate is approximately 26.5%
* Month-to-month contracts have the highest churn
* Electronic check payment method shows elevated churn (~45%)
* Fiber optic customers churn more than other service types
* Customers with higher monthly charges are more likely to churn


## 🤖 Predictive Modeling
* Built an **interpretable Logistic Regression model**
* **ROC AUC: 0.84**
* Key churn drivers identified:
    * Fiber optic internet service
    * Electronic check payment method
    * Senion citizen segment
    * Short customer tenure

* Strong retention factors:
    * One-year and two-year contracts
    * Longer customer tenure


## 🎯 Product Recommendations
* Incentivize customers to move from month-to-month to long-term contracts
* Promote auto-pay methods over electronic checks
* Improve onboarding and service quality for fiber optic customers
* Target high-risk customers early in their lifecycle with retention offers
  

## 📊 Tableau Dashboard
🔗 [View Interactive Dashboard](https://public.tableau.com/views/Book1_17662637779280/TelecomCustomerChurnProductInsights?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

This dashboard highlights high-risk churn segments and provides actionable product recommendations.

## 📁 Project Structure
```
telecom-churn-analysis/
│
├── data/
│   ├── Telco_customer_churn.csv
│   └── Telco_customer_churn_cleaned.csv
│
├── notebooks/
│   ├── sql_initial_metrics.sql
│   ├── churn_eda.ipynb
│   └── churn_model.ipynb
│
└── README.md
```

## 🚀 Outcome

This project demonstrates end-to-end **Product Data Analytics** skills:
from raw data to business insights, visualization, and predictive modeling.


