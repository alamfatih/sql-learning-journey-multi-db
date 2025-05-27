-- Exercise 9: Make a dashboard showing the following figures for each product ID
-- a) Total sales (in $) order by this column in descending
-- b) Total sales quantity
-- c) Number of orders
-- d) Max Sales value
-- e) Min Sales value
-- f) Average sales value
SELECT
    product_id,
    SUM(sales) AS Total_sales,        -- a) Total sales
    SUM(quantity) AS total_quantity,  -- b) Total sales quantity
    COUNT(order_id) AS total_order,   -- c) Number of orders
    MIN(sales) AS min_sales,          -- e) Min Sales value
    MAX(sales) AS max_sales,          -- d) Max Sales value
    AVG(sales) AS avg_sales           -- f) Average sales value
FROM
    sales
GROUP BY
    product_id
ORDER BY
    Total_sales DESC;                 -- Order by total sales in descending

-- Exercise 9: Get the list of product ID's where the quantity of product sold is greater than 10
SELECT
    product_id,
    SUM(quantity) AS total_quantity
FROM
    sales
GROUP BY
    product_id
HAVING
    SUM(quantity) > 10;