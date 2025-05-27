-- SQL Script: List Products Sold in Every Store

-- Objective:
-- List all product details that have been sold in every single store at least once.

SELECT
    product_detail -- Selects the detailed name of the product
FROM
    coffee_shop_sales -- Specifies the 'coffee_shop_sales' table as the source of data
GROUP BY
    product_detail -- Groups the results by each unique product detail
HAVING
    COUNT(DISTINCT store_id) = (SELECT COUNT(DISTINCT store_id) FROM coffee_shop_sales); -- Filters products to only include those that have been sold in a number of distinct stores equal to the total number of distinct stores available in the dataset