-- Quick coding exercise on Inner Join
-- Retrieve the names of customers and the products they have ordered.
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
    O.Product
FROM
    Customers AS C
INNER JOIN
    Orders AS O
ON
    C.CustomerID = O.CustomerID;