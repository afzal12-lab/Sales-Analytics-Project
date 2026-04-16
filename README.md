# Sales-Analytics-Project
SQL Sales Analytics Project using PostgreSQL – includes real-world queries for revenue analysis, customer insights, and performance tracking using JOINs, GROUP BY, and window functions.

This project focuses on analyzing sales data using SQL. It demonstrates real-world data analysis techniques such as revenue calculation, customer segmentation, and product performance tracking.

The project is designed for beginners and freshers preparing for SQL Developer / Data Analyst roles.

🔍 Key SQL Analysis Performed

### 1. 💰 Total Revenue
Calculated overall business revenue using aggregate functions.

### 2. 👤 Top Customers
Identified high-value customers using GROUP BY and ORDER BY.

### 3. 📅 Monthly Sales Trend
Analyzed sales trends month-wise using date functions.

### 4. 🛒 Product Performance
Determined best-selling products based on revenue.

### 5. 🏆 Customer Ranking
Used window functions like `RANK()` to rank customers by spending.


Sample Query

```sql
SELECT customer_id,
RANK() OVER (ORDER BY SUM(amount) DESC) AS rank
FROM sales
GROUP BY customer_id;
