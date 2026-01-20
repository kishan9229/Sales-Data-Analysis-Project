-- Total Revenue
SELECT SUM(TotalRevenue) FROM sales;

-- Product-wise Revenue
SELECT Product, SUM(TotalRevenue)
FROM sales
GROUP BY Product;

-- Monthly Revenue
SELECT strftime('%Y-%m', OrderDate), SUM(TotalRevenue)
FROM sales
GROUP BY strftime('%Y-%m', OrderDate);
