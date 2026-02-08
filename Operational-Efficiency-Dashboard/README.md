# Operational Efficiency & KPI Dashboard

## 📖 Executive Summary
**Role:** Product Consultant
**Tools:** SQL, Power BI, Azure Data Factory
**Goal:** Automate manual defect tracking to reduce production downtime.

## 💼 Business Problem
The production team relied on manual Excel sheets to track product defects, leading to a **24-hour lag** in identifying quality issues. This delay caused a 5% increase in waste material and slower reaction times to machinery faults.

## 🛠 Solution Architecture
1. **Data Ingestion:** Automated data pipeline using **Azure Data Factory** to pull production logs from MySQL every 4 hours.
2. **Data Modeling:** Created a Star Schema in Power BI to link *Production_Fact* tables with *Time* and *Machine_Dimension* tables.
3. **Visualization:** Designed a "Red/Amber/Green" alert system in Power BI to highlight machines exceeding the 2% defect threshold.

## 🚀 Key Results
* **Efficiency:** Reduced reporting turnaround time by **20%** (saved ~10 hours/week).
* **Quality:** Contributed to a **15% reduction in defect rates** by enabling real-time root cause analysis.
* **Adoption:** Dashboard is now used daily by 3 Plant Managers to plan shifts.

## 📂 Repository Contents
* `Key_SQL_Logic.sql`: Sample queries used for metric calculation.
* `Mock_Dashboard_Screenshots`: Visuals of the dashboard design (Anonymized).
