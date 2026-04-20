USE [21291001_PERF];
GO

EXECUTE AS USER = 'user_reporting';
GO

SELECT TOP 5 * FROM customers_perf;
SELECT TOP 5 * FROM products_perf;
SELECT TOP 5 * FROM orders_perf;
GO

REVERT;
GO