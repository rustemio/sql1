USE [21291001_PERF];
GO

CREATE INDEX idx_orders_perf_orderdate
ON orders_perf(order_date);

CREATE INDEX idx_orders_perf_productid
ON orders_perf(product_id);

CREATE INDEX idx_orders_perf_customerid
ON orders_perf(customer_id);

CREATE INDEX idx_products_perf_category
ON products_perf(category);