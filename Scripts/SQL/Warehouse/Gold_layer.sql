IF OBJECT_ID('gold.dim_customer') IS NOT NULL
	DROP VIEW gold.dim_customer;
GO
CREATE VIEW gold.dim_customer AS
SELECT
	ROW_NUMBER() OVER(ORDER BY customerID) AS CustomerKey,
			customerID,
			gender,
			SeniorCitizen,
			Partner,
			Dependents,
			tenure,
			Churn
FROM silver.dim_customers;
-----------------------------------------
IF OBJECT_ID('gold.dim_services') IS NOT NULL
	DROP VIEW gold.dim_services;
GO
CREATE VIEW gold.dim_services AS
SELECT
	ROW_NUMBER() OVER(ORDER BY customerID) AS ServiceKey,
	customerID,
	PhoneService,
	MultipleLines,
	InternetService,
	OnlineSecurity,
	OnlineBackup,
	DeviceProtection,
	TechSupport,
	StreamingTV,
	StreamingMovies
FROM silver.dim_services;
-----------------------------------------
IF OBJECT_ID('gold.dim_contract') IS NOT NULL
	DROP VIEW gold.dim_contract;
GO
CREATE VIEW gold.dim_contract AS
SELECT
	ROW_NUMBER() OVER(ORDER BY customerID) AS ContractKey,
	customerID,
	Contract AS contract_type,
	PaperlessBilling,
	PaymentMethod
FROM silver.fact_billing;
-----------------------------------------
IF OBJECT_ID('gold.fact_billing') IS NOT NULL
	DROP VIEW gold.fact_billing;
GO
CREATE VIEW gold.fact_billing AS
SELECT
	CST.CustomerKey,
	SER.ServiceKey,
	CON.ContractKey,
	ROW_NUMBER() OVER(ORDER BY BILL.customerID) AS BillingKey,
	bill.MonthlyCharges,
	bill.TotalCharges
FROM silver.fact_billing bill
LEFT JOIN gold.dim_customer CST
ON CST.customerID = bill.customerID
LEFT JOIN gold.dim_services SER
ON SER.customerID = bill.customerID
LEFT JOIN gold.dim_contract CON
ON CON.customerID = bill.customerID
-----------------------------------------