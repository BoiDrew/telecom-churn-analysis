CREATE DATABASE telecom_churn;
USE telecom_churn;

CREATE TABLE customers (
	customerID VARCHAR(50),
	gender VARCHAR(10),
	SeniorCitizen INT,
	Partner VARCHAR(5),
	Dependents VARCHAR(5),
	tenure INT,
	PhoneService VARCHAR(5),
	MultipeLines VARCHAR(30),
	InternetService VARCHAR(30),
	OnlineSecurity VARCHAR(30),
	OnilneBackup VARCHAR(30),
	DeviceProctection VARCHAR(30),
	TechSupport VARCHAR(30),
	StreamingTV VARCHAR(30),
	StreamingMovies VARCHAR(30),
	Contract VARCHAR(30),
	PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(30),
    MonthlyCharges DECIMAL (10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customerID VARCHAR(50),
    gender VARCHAR(10),
    SeniorCitizen VARCHAR(5),   -- FIXED
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);

SELECT COUNT(*) FROM customers;

-- Total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Churn distribution
SELECT Churn, COUNT(*) AS customers
FROM customers
GROUP BY Churn;

-- Churn rate
SELECT 
	ROUND(
		SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0/COUNT(*),
        2
	) AS churn_rate_percent
FROM customers;

-- Churn by contact type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY Contract
ORDER BY churned_customers DESC;

-- Average charges by churn
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM customers
GROUP BY Churn;
    