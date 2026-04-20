USE [21291001_PERF];
GO

EXECUTE AS USER = 'user_readonly';
GO

SELECT TOP 5 * FROM products_perf;
GO

REVERT;
GO