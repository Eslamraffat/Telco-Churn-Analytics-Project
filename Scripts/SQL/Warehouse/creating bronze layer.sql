-- Creating bronze table from raw data

IF OBJECT_ID('bronze.raw_file') IS NOT NULL
    DROP TABLE bronze.raw_file;
GO
CREATE TABLE bronze.raw_file(

	customerID			NVARCHAR(50),
	gender				NVARCHAR(50),
	SeniorCitizen		NVARCHAR(50),
	Partner				NVARCHAR(50),
	Dependents			NVARCHAR(50),
	tenure				NVARCHAR(50),
	PhoneService		NVARCHAR(50),
	MultipleLines		NVARCHAR(50),
	InternetService		NVARCHAR(50),
	OnlineSecurity		NVARCHAR(50),
	OnlineBackup		NVARCHAR(50),
	DeviceProtection	NVARCHAR(50),
	TechSupport			NVARCHAR(50),
	StreamingTV			NVARCHAR(50),
	StreamingMovies		NVARCHAR(50),
	Contract			NVARCHAR(50),
	PaperlessBilling	NVARCHAR(50),
	PaymentMethod		NVARCHAR(50),
	MonthlyCharges		NVARCHAR(50),
	TotalCharges		NVARCHAR(50),
	Churn				NVARCHAR(50)
);

GO

BEGIN TRY
TRUNCATE TABLE bronze.raw_file
	BULK INSERT bronze.raw_file
		FROM 'C:\Users\Raffat\Downloads\Big_project\WA_Fn-UseC_-Telco-Customer-Churn.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
			);
END TRY
BEGIN CATCH
END CATCh
