
IF OBJECT_ID('silver.fact_billing') IS NOT NULL
    DROP TABLE silver.fact_billing;

CREATE TABLE silver.fact_billing(
      customerID        NVARCHAR(50),
      Contract          VARCHAR(50),
      PaperlessBilling  VARCHAR(5),
      PaymentMethod     VARCHAR(50),
      MonthlyCharges    FLOAT,
      TotalCharges      FLOAT
      );

INSERT INTO silver.fact_billing(
      customerID,
      Contract,
      PaperlessBilling,
      PaymentMethod,
      MonthlyCharges,
      TotalCharges
    )

SELECT
      customerID,
      Contract,
      PaperlessBilling,
      PaymentMethod,
      MonthlyCharges,
      TotalCharges

FROM bronze.raw_file