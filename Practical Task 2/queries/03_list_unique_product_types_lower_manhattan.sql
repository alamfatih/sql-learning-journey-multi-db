-- SQL Script: List Unique Product Types Sold in Lower Manhattan

-- Objective:
-- Retrieve a distinct list of all product types that have been sold
-- specifically in the store located in 'Lower Manhattan'.

SELECT
    DISTINCT product_type -- Selects only the unique values from the 'product_type' column
FROM
    coffee_shop_sales     -- Specifies the 'coffee_shop_sales' table as the source of data
WHERE
    store_location = 'Lower Manhattan'; -- Filters the rows to include only transactions from the 'Lower Manhattan' store