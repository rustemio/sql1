USE [21291001_PERF];
GO

EXECUTE AS USER = 'user_manager';
GO

UPDATE customers_perf
SET city = 'ManagerTest'
WHERE customer_id = 1;
GO

SELECT TOP 1 * 
FROM customers_perf
WHERE customer_id = 1;
GO

REVERT;
GO