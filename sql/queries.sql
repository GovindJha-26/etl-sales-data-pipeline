-- Top Customers
SELECT customer_id, SUM(total_sales) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;

-- Monthly Revenue
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_sales) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

