-- 1. Total Sales by Region
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;


-- 2. Total Profit by Category
SELECT 
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;


-- 3. Average Profit per Sub-Category
SELECT 
    sub_category,
    AVG(profit) AS avg_profit
FROM sales
GROUP BY sub_category
ORDER BY avg_profit DESC;


-- 4. Top 5 Customers by Total Sales
SELECT 
    customer_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;


-- 5. Bottom 5 Customers by Total Sales
SELECT 
    customer_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales ASC
LIMIT 5;


-- 6. Regions with Sales Greater than 100,000
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(sales) > 100000
ORDER BY total_sales DESC;


-- 7. Category-wise Profit Margin
SELECT 
    category,
    SUM(profit) / SUM(sales) AS profit_margin
FROM sales
GROUP BY category
ORDER BY profit_margin DESC;


-- 8. Sub-Categories with Negative Profit (Loss-Making)
SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY total_profit;


-- 9. Total Orders per Region
SELECT 
    region,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_orders DESC;


-- 10. Sales and Profit by Segment
SELECT 
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY segment
ORDER BY total_sales DESC;


-- 11. Top Sub-Categories by Sales within Each Category
SELECT 
    category,
    sub_category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category, sub_category
ORDER BY category, total_sales DESC;


-- 12. Average Sales per Order
SELECT 
    AVG(sales) AS avg_sales_per_order
FROM sales;


-- 13. Total Sales, Profit, and Quantity Overview
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales;

