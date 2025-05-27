-- Quick coding exercise on MIN & MAX function
-- Find the minimum and maximum order amounts from the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    MIN(Amount) AS MinimumOrderAmount,
    MAX(Amount) AS MaximumOrderAmount
FROM
    Orders;