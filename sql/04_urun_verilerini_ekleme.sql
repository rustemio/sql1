USE [21291001_PERF];
GO

WITH nums AS (
    SELECT TOP (500)
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.all_objects a
    CROSS JOIN sys.all_objects b
)
INSERT INTO products_perf (
    product_id, product_name, category, price
)
SELECT
    n,
    CONCAT('Product_', n),
    CASE 
        WHEN n % 5 = 0 THEN 'Electronics'
        WHEN n % 5 = 1 THEN 'Home'
        WHEN n % 5 = 2 THEN 'Sports'
        WHEN n % 5 = 3 THEN 'Office'
        ELSE 'Fashion'
    END,
    CAST((n % 200) + 10 + (n * 0.15) AS DECIMAL(10,2))
FROM nums;