USE MASTER
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'Telco_Customer_Churn')
BEGIN
	ALTER DATABASE Telco_Customer_Churn SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Telco_Customer_Churn;
END;

CREATE DATABASE Telco_Customer_Churn;
USE Telco_Customer_Churn;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;