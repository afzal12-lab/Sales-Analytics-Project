-- Total Revenue
SELECT SUM(amount) FROM sales;

-- Top Customers
SELECT customer_id, SUM(amount)
FROM sales
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- Monthly Sales
SELECT DATE_TRUNC('month', order_date), SUM(amount)
FROM sales
GROUP BY 1;

-- Top Product
SELECT product, SUM(amount)
FROM sales
GROUP BY product
ORDER BY SUM(amount) DESC;

-- Rank Customers
SELECT customer_id,
RANK() OVER (ORDER BY SUM(amount) DESC)
FROM sales
GROUP BY customer_id;
