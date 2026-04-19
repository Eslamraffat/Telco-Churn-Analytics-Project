/*
Bornz Layer Quality Check:
A- primary key is not null/duplicate
B- checking for unwanted spaces
C- Check the consistency of values
*/
-- A- primary key is not null/duplicate:PASSED
SELECT COUNT(*),
	customerID
FROM bronze.raw_file
GROUP BY customerID
HAVING customerID IS NULL OR COUNT(*) < 1;

-- B- checking for unwanted spaces:PASSED
SELECT TotalCharges
FROM bronze.raw_file
WHERE TRIM(TotalCharges) != TotalCharges

-- C- Check the consistency of values: CLEANED
SELECT
customerID,
PhoneService,
REPLACE(MultipleLines,'No phone service','No') AS MultipleLines,
InternetService,
REPLACE(OnlineSecurity,'No internet service','No') AS OnlineSecurity,
REPLACE(OnlineBackup,'No internet service','No') AS OnlineBackup,
REPLACE(DeviceProtection,'No internet service','No') AS DeviceProtection,
REPLACE(TechSupport,'No internet service','No') AS TechSupport,
REPLACE(StreamingTV,'No internet service','No') AS StreamingTV,
REPLACE(StreamingMovies,'No internet service','No') AS StreamingMovies
FROM bronze.raw_file
