-- SQL Script: Identify Product with Highest Average Sales Quantity per Transaction in Each Store

-- Objective:
-- Identify the product that has the highest average sales quantity per transaction
-- for each individual store.

SELECT
    t1.store_id,            -- Identifier for the store
    t1.store_location,      -- Location of the store
    t1.product_id,          -- Identifier for the product
    t1.product_detail,      -- Detailed name of the product
    t1.avg_quantity         -- The average quantity sold for that product in that store
FROM
    (
        -- Subquery 1 (t1): Calculates the average transaction quantity for each product in each store
        SELECT
            store_id,
            store_location,
            product_id,
            product_detail,
            AVG(transaction_qty) AS avg_quantity
        FROM
            coffee_shop_sales -- Uses 'coffee_shop_sales' table
        GROUP BY
            store_id, store_location, product_id, product_detail
    ) t1
JOIN
    (
        -- Subquery 2 (t2): Finds the maximum average quantity for each store
        SELECT
            store_id,
            MAX(avg_quantity) AS max_avg_quantity
        FROM
            (
                -- Innermost Subquery (sub): Calculates average quantity per product per store
                SELECT
                    store_id,
                    product_id,
                    AVG(transaction_qty) AS avg_quantity
                FROM
                    coffee_shop_sales -- Uses 'coffee_shop_sales' table
                GROUP BY
                    store_id, product_id
            ) sub
        GROUP BY
            store_id
    ) t2 ON t1.store_id = t2.store_id AND t1.avg_quantity = t2.max_avg_quantity -- Joins t1 and t2 to match products with their store's highest average quantity
ORDER BY
    t1.store_id; -- Orders the final result by store ID