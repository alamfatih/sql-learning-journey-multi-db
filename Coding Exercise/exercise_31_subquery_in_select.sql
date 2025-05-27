-- Quick coding exercise on Subquery in Select Clause
-- Retrieve the customer names along with the total number of orders each customer has made.
-- Table Information:
-- Table 1 - Customers
-- Each customer has a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "City" column stores the city where the customer is located.
-- Table 2 - Orders
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table,
-- indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    C.CustomerName,
    (SELECT COUNT(O.OrderID)
     FROM Orders AS O
     WHERE O.CustomerID = C.CustomerID) AS TotalOrders
FROM
    Customers AS C;