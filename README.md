Telco Customer Churn & Retention Strategy
End‑to‑end analytics project using SQL, Power BI, 
and business strategy to identify churn drivers and recommend high‑impact retention actions.

🚀 Project Overview
This project analyzes customer churn for a telecom company using:
-	SQL for data cleaning, transformation, and modeling
-	Power BI for interactive dashboards
-	DAX for business metrics and advanced calculations
-	Consulting‑grade insights to recommend retention strategies

The goal is to understand:
1.	Why do customers churn.
2.	which segments are most at risk.
3.	what actions will reduce churn and save revenue.

🧱 Tech Stack
-	SQL Server (staging → warehouse → analytics layer).
-	Power BI Desktop.
-	DAX.
-	Star Schema Modeling.

🗂 Repository Structure
Scripts
SQL
-	01_creating database.sql
-	02_creating bronze layer.sql
-	03_bronze layer quality check.sql
-	04_Silver dim_customers.sql
-	05_Silver dim_services.sql
-	06_Silver fact_billing.sql
-	07_Gold_layer.sql

DAX
-	Executive_Summary_Measures.dax
-	Customer_Profile_Measures.dax
-	Services_Contract_Measures.dax
-	Billing_Revenue_Measures.dax
-	Retention_Strategy_Measures.dax
-	Calculated_Tables.dax

Model
-	data_model.png
-	relationships_view.png
-	star_schema_diagram.png
-	table_dictionary.md

PowerBI
    Telco_Churn.pbix

Screenshots
-	page1_executive_summary.pdf
-	page2_customer_profile. pdf
-	page3_services_contract. pdf
-	page4_financial_impact. pdf
-	page5_retention_strategy. pdf
-	page6_Data modeling.png

README.md
🧩 Data Model
The project uses a star schema with:
-	Fact table: Billing, charges, churn flag
-	Dimension tables: Customer, services, contract.

🛠 SQL Pipeline
✔ Staging Layer
-	Raw data cleaning
-	Standardizing column names
-	Handling missing values
-	Data type corrections
✔ Warehouse Layer
-	Fact table creation
-	Dimension table
-	Surrogate keys
-	Relationship preparation

📈 Power BI Dashboard Pages
1️⃣ Overview
-	Overall churn rate
-	Monthly revenue lost
-	Customer lifetime value (LTV)
-	High‑level KPIs

2️⃣ Customer Profile
-	Churn rate.
-	Tenure groups
-	Insights
-	Conclusion

3️⃣ Services & Contract Analysis
-	Internet service types
-	Add‑on services
-	Contract duration impact
-	Support & security services

4️⃣ Financial Impact
-	Revenue lost by segment
-	Monthly charges
-	LTV breakdown
-	High‑value customer analysis

5️⃣ Retention Strategy (Consulting Page)
-	High‑risk segments
-	Priority Matrix (Impact vs Effort)
-	Recommended actions
-	Screenshots included in /Screenshots.

📌 Key Insights

🔥 High‑Risk Segments
-	Month‑to‑Month customers.
-	Fiber Optic users.
-	Customers without OnlineSecurity.
-	Customers without TechSupport.
-	New customers (0–6 months).

💸 Financial Impact
-	Revenue loss heavily concentrated in short‑tenure and month‑to‑month segments.
-	Security & support services significantly reduce churn.
-	Fiber Optic churn indicates service dissatisfaction.

🎯 Recommended Actions
-	Convert month‑to‑month customers to contracts
-	Improve onboarding for new customers
-	Bundle OnlineSecurity & TechSupport
-	Investigate Fiber Optic service issues
-	Prioritize high‑value customers for retention outreach

🔄 Data Refresh & Automation
The project is designed to update automatically when:

-	SQL tables receive new data
-	Power BI refreshes (manual or scheduled)
