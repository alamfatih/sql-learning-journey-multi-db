-- Quick coding exercise on Right Join
-- Retrieve the products that have been ordered along with the names of all customers who placed those orders.
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
RIGHT JOIN
    Orders AS O
ON
    C.CustomerID = O.CustomerID;