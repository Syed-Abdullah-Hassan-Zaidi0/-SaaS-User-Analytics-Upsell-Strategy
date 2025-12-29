# 📊 SaaS User Analytics & Upsell Strategy

## 🧩 Problem Statement
SaaS companies often focus heavily on churn reduction, but sustainable revenue growth depends on identifying **existing users who are likely to upgrade**.

This project analyzes **user behavior, feature adoption, and revenue patterns** to uncover **upsell opportunities** and support revenue-driven decision-making.

---

## 🎯 Objective
- Identify high-value and upgrade-ready users  
- Understand the impact of feature adoption on revenue  
- Segment users using analytics and machine learning  
- Present insights through an interactive business dashboard  

---

## 🛠️ Tools & Technologies
- **Python:** Pandas, Scikit-learn  
- **SQL:** SQLite (CTEs, Window Functions, Cohort Analysis)  
- **Power BI:** KPIs, slicers, interactive dashboards  

---

## 🔍 Key Analysis
- Revenue & ARPU analysis by subscription plan  
- Feature adoption impact on revenue  
- Upsell candidate identification using SQL business rules  
- User segmentation with **K-Means Clustering**  
- Anomaly detection using **Isolation Forest**  

---

## 📈 Dashboard Highlights (Power BI)
- KPI Cards:  
  - Total Users  
  - Total Revenue  
  - ARPU  
  - Feature Adoption %  
- Revenue and plan-wise performance analysis  
- ML-based cluster filtering  
- Interactive slicers for dynamic exploration  

---

## 🧠 Key Insights
- Users with higher feature usage generate significantly higher revenue  
- Certain **Basic plan users** show strong upsell potential  
- ML-based segmentation reveals distinct behavioral patterns across users  

---

## Folder
├── data/
│   └── saas_users.csv
│
├── notebooks/
│   ├── SaaS_Feature_Adoption_Project.ipynb

│
├── sql/
│   └── queries.sql
|   ├── saas.db
│
├── powerbi/
│   └── Saas.pbix
|   ├── Saas_user_PowerBi
│
└── README.md


## 🧮 SQL Analysis (Advanced)
- Revenue and ARPU analysis by subscription plan  
- Feature adoption impact on revenue  
- Upsell candidate identification using business rules  
- Common Table Expressions (CTEs) for clean and modular queries  
- Window functions to rank users within subscription plans  
- Cohort analysis to study user behavior over time  

**Outcome:** Identified high-usage **Basic plan users** suitable for plan upgrades.

---

## 🤖 Machine Learning Analysis
### K-Means Clustering
- Segmented users based on activity, feature usage, and revenue  
- Uncovered distinct behavioral user groups  

### Isolation Forest
- Detected anomalous users with unusually high or low behavior patterns  
- Flagged users for deeper investigation  

**Outcome:** ML enabled deeper segmentation beyond rule-based analysis and supported targeted upsell strategies.

---

## 📊 Power BI Dashboard
- **KPI Cards:** Total Users, Total Revenue, ARPU, Feature Adoption %  
- Revenue and plan-wise performance visuals  
- Upsell target user table  
- ML cluster-based filtering  
- **Interactive slicers:**  
  - Plan Type  
  - Signup Month  
  - User Segment  
  - Cluster  

**Outcome:** Enabled stakeholders to dynamically explore data and identify high-value user segments.

## 🧠 Final Conclusion

This project demonstrates a revenue-focused SaaS analytics workflow, combining SQL, Machine Learning, and Power BI to move from raw data to actionable business insights, with a strong emphasis on upsell opportunities and decision support.


## 📂 Project Structure
