-- SQL Script: Calculate Total Transactions Before Noon

-- Objective:
-- Calculate the total number of transactions that occurred on any given day
-- before 12:00 PM (noon).

SELECT
    COUNT(transaction_id) AS total_transactions -- Counts the total number of transaction IDs and aliases the result as 'total_transactions'
FROM
    coffee_shop_sales     -- Specifies the 'coffee_shop_sales' table as the source of data
WHERE
    transaction_time < '12:00:00'; -- Filters the rows to include only transactions that occurred before 12:00:00 (noon)