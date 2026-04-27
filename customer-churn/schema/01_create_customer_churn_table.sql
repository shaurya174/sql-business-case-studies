-- =====================================================
-- DATABASE SETUP
-- =====================================================

CREATE DATABASE IF NOT EXISTS churn_db;
USE churn_db;

-- =====================================================
-- STAGING TABLE (RAW INGESTION LAYER)
-- All columns stored as VARCHAR to preserve raw data
-- No transformations applied at this stage
-- =====================================================

CREATE TABLE IF NOT EXISTS customer_churn_staging (

    -- Unique customer identifier (Primary Key candidate)
    customerID VARCHAR(50),

    -- Demographics
    gender VARCHAR(10),
    SeniorCitizen VARCHAR(5),
    Partner VARCHAR(5),
    Dependents VARCHAR(5),

    -- Customer tenure in months
    tenure VARCHAR(10),

    -- Service usage flags
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),

    -- Add-on services
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),

    -- Contract and billing details
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),

    -- Financial metrics (kept as text for staging)
    MonthlyCharges VARCHAR(20),
    TotalCharges VARCHAR(30),

    -- Target variable (churn label)
    Churn VARCHAR(5)
);

SHOW TABLES;
