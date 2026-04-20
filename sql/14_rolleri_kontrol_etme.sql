USE [21291001_PERF];
GO

SELECT name, type_desc
FROM sys.database_principals
WHERE type = 'R'
  AND name IN ('readonly_role', 'reporting_role', 'manager_role');