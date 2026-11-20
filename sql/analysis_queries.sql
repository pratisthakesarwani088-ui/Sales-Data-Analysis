-- total sales and profit
SELECT ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM superstore;

-- sales and profit by category
SELECT Category,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;

-- sales and profit by region
SELECT Region,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- top 5 customers by sales
SELECT Customer_Name,
       ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 5;