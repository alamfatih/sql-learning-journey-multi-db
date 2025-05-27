-- SQL Script: Retrieve the top 5 most frequently sold products by product category.

-- Objective:
-- Retrieve the top 5 most frequently sold products, grouped by their product category.
-- This query identifies which products within each category have the highest total transaction quantity.

SELECT
    product_category,             -- The category of the product
    product_id,                   -- The identifier for the product
    SUM(transaction_qty) AS total_quantity_sold -- Sum of quantities sold for each product within its category
FROM
    coffee_shop_sales             -- Specifies the table 'coffee_shop_sales' as requested
GROUP BY
    product_category,             -- Groups the results by product category
    product_id                    -- Further groups by product ID within each category
ORDER BY
    total_quantity_sold DESC      -- Orders the results by total quantity sold in descending order
LIMIT 5;                          -- Limits the output to the top 5 results