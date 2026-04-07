# 🛍️ AtliQ Mart Promotion Performance Analysis

### 📊 End-to-End Business-Focused Data Analytics Project using SQL & Power BI

## 🏢 Company Overview

AtliQ Mart is a large retail chain operating more than 50 supermarkets across South India, primarily dealing in FMCG products. The company runs seasonal promotional campaigns to boost sales and customer engagement. During Diwali 2023 and Sankranti 2024, AtliQ Mart launched multiple promotions across all stores. These promotions were applied to AtliQ branded products to increase both revenue and volume. The management wanted to evaluate the effectiveness of these campaigns. This analysis helps the company improve its future promotional strategies and pricing decisions.



## 📌 Problem Statement

The Sales Director wanted a clear understanding of which promotional strategies actually worked and which failed. The key objective was to analyze the impact of promotions on both revenue and units sold. The analysis needed to identify top-performing and underperforming stores, cities, and product categories. Additionally, the company wanted to compare different promotion types such as BOGOF, discounts, and cashback. The final goal was to provide actionable insights that could improve future campaign planning. This project simulates a real-world business scenario where data-driven decisions are critical. :contentReference[oaicite:0]{index=0}



## 📂 Data Overview

Received one SQL database and four CSV files for analysis. However, I primarily worked with the SQL databases, using the CSV files for cross-verification purposes.

The database are as follows:

retail_sales.db: Contains fact tables (fact_events) and dimension tables (dim_campaigns, dim_products, dim_stores).


It is fully accessible on the Codebasics website and can be viewed via the following link:
[https://codebasics.io/challenge/codebasics-resume-project-challenge](https://codebasics.io/challenges/codebasics-resume-project-challenge/12)



## 🛠️ Tools & Technologies

* Data Visualization : Power BI
* Data Analysis : SQL Server, DAX



## 🧹 Data Cleaning & Transformations

Here is your content converted into clean bullet points:

* Identified and resolved several data quality issues before analysis
* Corrected **Revenue_after** values for certain promotion types using proper discount logic
* Standardized data types to maintain consistency in calculations
* Handled negative and inconsistent values to prevent misleading insights
* Created derived metrics such as **Incremental Revenue**, **Incremental Units**, **IR %**, and **ISU %**
* Applied transformation logic to ensure the dataset reflects real business scenarios accurately



## 📊 Reports & Analysis

SQL was used to answer key business questions and generate structured reports. Ad-hoc queries included identifying high-value products under BOGOF, counting stores by city, and comparing campaign-wise revenue. Category-level analysis helped rank performance based on ISU %. Product-level analysis identified top and bottom performers using IR %. These queries ensured that the analysis was not just visual but also backed by strong SQL logic. The outputs directly supported business decision-making requirements.


## 🌐 Live Dashboard

🔗 **[View Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiZGZmMTFjYTktNTVlZS00YmNhLTk2OGItOTMwNWFjYmM2ZTM3IiwidCI6ImVjMTU1NWRlLTlmMDAtNDQ1OS05MDA3LTUxNDc2NDQ3MDIwNyJ9)**



## 💡 Key Insights

* Cashback promotions generated the highest revenue uplift across campaigns, making them the most effective for revenue growth. 
* BOGOF promotions significantly increased unit sales, making them ideal for volume-driven strategies. 
* Discount-based promotions such as 25% and 50% OFF showed negative impact on revenue despite moderate volume growth.
* Combo and Home Appliance categories responded strongly to promotions and contributed the majority of revenue lift. 
* Personal Care category consistently underperformed, indicating weak promotional effectiveness.
* These insights clearly differentiate which strategies should be scaled or avoided.



## 🎯 Recommendations

* Cashback promotions should be prioritized for campaigns focused on maximizing revenue. 
* BOGOF promotions should be used strategically for categories where volume growth is important. 
* Discount-heavy promotions should be minimized as they negatively impact revenue. 
* High-performing categories like combo and appliances should receive more promotional investment. 
* Underperforming categories like personal care should be re-evaluated for pricing and promotion strategy. 
* These recommendations directly align with improving business profitability and campaign effectiveness.






