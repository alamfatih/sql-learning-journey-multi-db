-- SQL Script: Retrieve Product with Most Price Fluctuations

-- Objective:
-- Retrieve the product that has the most price fluctuations (i.e.,
-- the largest difference between the highest and lowest price) across all transactions.

SELECT
    product_id,                           -- The identifier for the product
    product_detail,                       -- The detailed name or description of the product
    MAX(unit_price) - MIN(unit_price) AS price_fluctuation -- Calculates the difference between the highest and lowest unit price for the product
FROM
    coffee_shop_sales                     -- Specifies the 'coffee_shop_sales' table as the source of data
GROUP BY
    product_id,                           -- Groups the results by product ID
    product_detail                        -- Further groups by product detail to get fluctuations per unique product
ORDER BY
    price_fluctuation DESC                -- Orders the results by the calculated price fluctuation in descending order
LIMIT 1;                                  -- Limits the output to only the top 1 product with the largest fluctuation