-- Exercise 10: Find the total sales done in every state for customer_20_60 and sales_2015 table.
-- Hint: Use Joins and Group By command.
SELECT
    b.state,
    SUM(sales) AS total_sales
FROM
    sales_2015 AS a
LEFT JOIN
    customer_20_60 AS b ON a.customer_id = b.customer_id
GROUP BY
    b.state;

-- Exercise 10: Get data containing Product_id, product name, category, total sales value of that product and total quantity sold.
-- (Use sales and product table)
SELECT
    a.product_id,
    a.product_name,
    a.category,
    SUM(b.sales) AS total_sales,
    SUM(b.quantity) AS total_quantity
FROM
    product AS a
LEFT JOIN
    sales AS b ON a.product_id = b.product_id
GROUP BY
    a.product_id, a.product_name, a.category; -- Penting untuk menyertakan semua kolom non-agregat di GROUP BY