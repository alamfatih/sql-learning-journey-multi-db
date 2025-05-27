-- SQL Script: Calculate Average Revenue by Product Category During Peak and Non-Peak Hours per Store

-- Objective:
-- Find the average revenue per transaction for each product category,
-- differentiating between peak hours (7 AM - 9 AM) and non-peak hours,
-- for each store.

SELECT
    store_id,                           -- Identifier for the store
    store_location,                     -- Location of the store
    product_category,                   -- Category of the product
    -- Calculate average revenue specifically for transactions within peak hours (7 AM - 9 AM)
    AVG(CASE
        WHEN transaction_time BETWEEN '07:00:00' AND '09:00:00'
        THEN transaction_qty * unit_price
        ELSE NULL -- Exclude transactions outside this window from the peak hour average
    END) AS avg_revenue_peak_hours,
    -- Calculate average revenue for transactions outside peak hours
    AVG(CASE
        WHEN transaction_time NOT BETWEEN '07:00:00' AND '09:00:00'
        THEN transaction_qty * unit_price
        ELSE NULL -- Exclude transactions within peak hours from the non-peak average
    END) AS avg_revenue_non_peak_hours
FROM
    coffee_shop_sales             -- Specifies the 'coffee_shop_sales' table as the source of data
GROUP BY
    store_id,                   -- Groups the results by store ID
    store_location,             -- Further groups by store location
    product_category;           -- Further groups by product category to get averages per category per store