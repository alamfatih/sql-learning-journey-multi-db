-- SQL Script: Identify Top 5 Days with Most Transaction Quantity Deviation

-- Objective:
-- Identify the top 5 days where the total transaction quantity deviated the most
-- from the overall average daily transaction quantity.
-- This query uses a subquery with a window function for calculation.

SELECT
    transaction_date,   -- The specific date of the transactions
    total_qty,          -- The total quantity of transactions for that day
    deviation           -- The absolute deviation of that day's total quantity from the average
FROM
    (
        SELECT
            transaction_date,
            SUM(transaction_qty) AS total_qty,              -- Calculate the total quantity for each day
            AVG(SUM(transaction_qty)) OVER () AS avg_qty,   -- Calculate the overall average of daily total quantities using a window function (over the entire result set)
            ABS(SUM(transaction_qty) - AVG(SUM(transaction_qty)) OVER ()) AS deviation -- Calculate the absolute deviation from the average
        FROM
            coffee_shop_sales     -- Specifies the 'coffee_shop_sales' table as the source of data
        GROUP BY
            transaction_date      -- Groups transactions by date to get daily totals
    ) AS Daily_Transactions       -- Alias the subquery result as 'Daily_Transactions'
ORDER BY
    deviation DESC                -- Orders the daily transactions by their deviation in descending order (largest deviation first)
LIMIT 5;                          -- Limits the output to the top 5 days with the highest deviation