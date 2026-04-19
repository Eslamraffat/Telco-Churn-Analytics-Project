IF OBJECT_ID('silver.dim_customers') IS NOT NULL
    DROP TABLE silver.dim_customers;

CREATE TABLE silver.dim_customers(
customerID      NVARCHAR(50),
gender          VARCHAR(10),
SeniorCitizen   TINYINT,
Partner         VARCHAR(10),
Dependents      VARCHAR(10),
tenure          TINYINT,
Churn           VARCHAR(10)
);

INSERT INTO silver.dim_customers(
      customerID,
      gender,
      SeniorCitizen,
      Partner,
      Dependents,
      tenure,
      Churn
    )
SELECT 
        customerID,
        gender,
        SeniorCitizen,
        Partner,
        Dependents,
        tenure,
        Churn
FROM bronze.raw_file;
