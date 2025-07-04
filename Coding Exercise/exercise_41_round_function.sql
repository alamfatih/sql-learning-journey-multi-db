-- Quick coding exercise on ROUND function
-- Retrieve the amounts and the rounded order amounts from the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Amount,
    ROUND(Amount) AS RoundedAmount -- Meng rounding ke bilangan bulat terdekat
FROM
    Orders;