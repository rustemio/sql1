USE [21291001_PERF];
GO

ALTER ROLE readonly_role ADD MEMBER user_readonly;
ALTER ROLE reporting_role ADD MEMBER user_reporting;
ALTER ROLE manager_role ADD MEMBER user_manager;
GO