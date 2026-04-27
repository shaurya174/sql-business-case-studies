-- =====================================================
-- DATABASE CONTEXT
-- =====================================================
USE churn_db;

-- =====================================================
-- DATA INGESTION (STAGING LAYER)
-- Loads raw customer churn dataset into staging table
-- No transformations applied (raw ingestion only)
-- =====================================================

LOAD DATA LOCAL INFILE 'C:/sql/customer_churn.csv'
INTO TABLE customer_churn_staging
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;