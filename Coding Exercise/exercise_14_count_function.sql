-- Quick coding exercise on Count function
-- Count the total number of orders in the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT COUNT(*) AS TotalOrders
FROM Orders;