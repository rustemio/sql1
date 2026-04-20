USE [21291001_PERF];
GO

GRANT SELECT ON customers_perf TO readonly_role;

GRANT SELECT ON customers_perf TO reporting_role;
GRANT SELECT ON products_perf TO reporting_role;
GRANT SELECT ON orders_perf TO reporting_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON customers_perf TO manager_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON products_perf TO manager_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON orders_perf TO manager_role;
GO