# Investor Behaviour Analysis

## Overview
This project analyzes investor behaviour across demographic segments to understand investment preferences, decision drivers, and purpose-oriented investing patterns. The analysis focuses on identifying how age groups differ in risk appetite, return sensitivity, and investment objectives to support data-driven financial insights.

---

## Dataset
- Cleaned investor-level dataset with approximately **12,000 records**
- Data preparation and transformation performed using **MySQL**
- Dataset represents **investment behaviour scores and preferences**, not actual monetary portfolio values
- Final cleaned data was used consistently across SQL analysis, Python validation, and Power BI dashboards

---

## Tools & Technologies
- **MySQL** – data cleaning, transformation, aggregation, and business queries  
- **Python (Pandas, NumPy)** – exploratory analysis and validation of key metrics  
- **Power BI** – interactive dashboards and visual analysis  
- **GitHub** – version control and project documentation  

---

## Project Structure
data/
└── cleaned/
└── finance_trends_cleaned.csv

sql/
├── 01_data_cleaning.sql
├── 02_eda.sql
└── 03_business_queries.sql

python/
└── Finance_Trends.ipynb

powerbi/
└── Investor Behaviour Analysis.pbix

screenshots/
├── 01_overview_full.png
├── 02_overview_filtered.png
├── 03_deepdive_full.png
├── 04_deepdive_focus.png

## Key Business Questions
- Which age groups dominate investor participation?
- What investment purposes drive behaviour across demographics?
- How do risk, returns, and locking period influence decision-making?
- Which investor segments exhibit growth-oriented versus stability-oriented preferences?

---

## Dashboard Summary
The Power BI report contains **two focused pages**:

**Executive Overview**
- Total investor count and aggregated investment behaviour score
- Top age group by investment activity
- Investment purpose distribution (wealth creation, savings, returns)
- Investor distribution by age group and gender

**Deep Dive Analysis**
- Average investment preference by age group across instruments
- Purpose of investing comparison across demographics
- Contribution of key decision factors (risk, returns, locking period)
- Detailed behavioural patterns highlighting segment-level differences

Dashboard screenshots are provided in the `screenshots/` folder for quick reference.

---

## Key Insights
- **Young investors (18–30)** dominate in volume and are primarily driven by **wealth creation**, indicating higher risk tolerance.
- **Equity and mutual funds** are preferred by younger investors, reflecting growth-oriented behaviour.
- The **31–45 age group** shows higher investment intensity with increased sensitivity to **returns and locking period**, suggesting a shift toward stability.
- Across all segments, **returns** remain the most influential decision factor, while risk appetite varies by age.

---

## How to Use
1. Review SQL scripts sequentially to understand data preparation and analysis logic.
2. Use the Python notebook for exploratory analysis and result validation.
3. Open the Power BI file to explore interactive dashboards.
4. Refer to screenshots for a quick visual summary of insights.

---

## Author
**Vaibhav Dixit**
