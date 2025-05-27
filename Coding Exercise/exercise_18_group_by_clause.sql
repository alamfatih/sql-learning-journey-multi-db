-- Quick coding exercise on Group By Clause
-- Calculate the total order amount for each product in the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Product,
    SUM(Amount) AS TotalAmount
FROM
    Orders
GROUP BY
    Product;