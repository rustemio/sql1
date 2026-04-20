USE [21291001_PERF];
GO

WITH nums AS (
    SELECT TOP (1000)
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.all_objects a
    CROSS JOIN sys.all_objects b
)
INSERT INTO customers_perf (
    customer_id, first_name, last_name, city, country, email
)
SELECT
    n,
    CONCAT('Name', n),
    CONCAT('Surname', n),
    CASE 
        WHEN n % 5 = 0 THEN 'Istanbul'
        WHEN n % 5 = 1 THEN 'Ankara'
        WHEN n % 5 = 2 THEN 'Izmir'
        WHEN n % 5 = 3 THEN 'Bursa'
        ELSE 'Antalya'
    END,
    CASE 
        WHEN n % 3 = 0 THEN 'Turkey'
        WHEN n % 3 = 1 THEN 'Germany'
        ELSE 'France'
    END,
    CONCAT('customer', n, '@mail.com')
FROM nums;