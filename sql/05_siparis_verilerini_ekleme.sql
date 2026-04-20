USE [21291001_PERF];
GO

WITH nums AS (
    SELECT TOP (50000)
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.all_objects a
    CROSS JOIN sys.all_objects b
)
INSERT INTO orders_perf (
    order_id, customer_id, product_id, order_date, quantity, total_amount
)
SELECT
    n,
    ((n - 1) % 1000) + 1,
    ((n - 1) % 500) + 1,
    DATEADD(DAY, -(n % 730), CAST(GETDATE() AS DATE)),
    ((n - 1) % 10) + 1,
    CAST((((n - 1) % 10) + 1) * ((((n - 1) % 200) + 10) + (n * 0.15)) AS DECIMAL(12,2))
FROM nums;