USE [21291001_PERF];
GO
SET STATISTICS TIME ON;
SET STATISTICS IO ON;
GO

SELECT TOP 1000
    o.order_id,
    o.order_date,
    o.quantity,
    o.total_amount,
    c.first_name,
    c.last_name,
    p.product_name,
    p.category
FROM orders_perf o
INNER JOIN customers_perf c ON o.customer_id = c.customer_id
INNER JOIN products_perf p ON o.product_id = p.product_id
WHERE o.order_date >= '2024-01-01'
  AND p.category = 'Electronics'
ORDER BY o.total_amount DESC;
GO

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;
GO