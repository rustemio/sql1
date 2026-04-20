USE [21291001_PERF];
GO

EXECUTE AS USER = 'user_reporting';
GO

UPDATE customers_perf
SET city = 'TestCity'
WHERE customer_id = 1;
GO

REVERT;
GO