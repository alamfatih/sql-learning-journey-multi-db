-- SQL Script: Retrieve Store Revenue with Average Unit Price Filter

-- Objective:
-- Retrieve the store location and total revenue for each store
-- where the average unit price of products sold is greater than $2.50.

SELECT
    store_location,                         -- The location of the store
    SUM(transaction_qty * unit_price) AS total_revenue -- Calculates the total revenue for each store
FROM
    coffee_shop_sales                     -- Specifies the 'coffee_shop_sales' table as the source of data
GROUP BY
    store_id,                             -- Groups the results by store ID
    store_location                        -- Further groups by store location
HAVING
    AVG(unit_price) > 2.50                -- Filters the grouped results, keeping only stores where the average unit price is greater than $2.50
ORDER BY
    total_revenue DESC;                   -- Orders the final result set by total revenue in descending order