-- Quick coding exercise on POWER function
-- Retrieve the order amounts and corresponding powers of two of the amounts from the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Amount,
    POWER(Amount, 2) AS AmountSquared -- Menghitung Amount pangkat 2
FROM
    Orders;