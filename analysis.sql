-- Use database
USE sales_db;

-- View data
SELECT * FROM `sql_sales_dataset_200_rows.xlsx - sheet1`;

-- Top Customers
SELECT customer_name, SUM(total_price) AS total_spent
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Average Order Value
SELECT AVG(total_price) AS avg_order_value
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`;

-- Sales by Category
SELECT category, SUM(total_price) AS total_sales
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`
GROUP BY category
ORDER BY total_sales DESC;

-- Sales by Region
SELECT region, SUM(total_price) AS total_sales
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`
GROUP BY region
ORDER BY total_sales DESC;

-- Case Statement
SELECT customer_name, total_price,
CASE 
    WHEN total_price > 10000 THEN 'High'
    WHEN total_price > 5000 THEN 'Medium'
    ELSE 'Low'
END AS order_type
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`;

-- Top Products
SELECT product_name, SUM(total_price) AS total_sales
FROM `sql_sales_dataset_200_rows.xlsx - sheet1`
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;