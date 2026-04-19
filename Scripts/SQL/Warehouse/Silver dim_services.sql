
IF OBJECT_ID('silver.dim_services') IS NOT NULL
    DROP TABLE silver.dim_services;

CREATE TABLE silver.dim_services(

customerID          NVARCHAR(50),
PhoneService        VARCHAR(5),
MultipleLines       VARCHAR(5),
InternetService     VARCHAR(50),
OnlineSecurity      VARCHAR(50),
OnlineBackup        VARCHAR(5),
DeviceProtection    VARCHAR(5),
TechSupport         VARCHAR(5),
StreamingTV         VARCHAR(5),
StreamingMovies     VARCHAR(5)
);

INSERT INTO silver.dim_services(
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
        )
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
