-- Quick coding exercise on Views
-- Create a view named `HighValueCustomers` that shows the names and cities of
-- customers who have made orders with an amount greater than $150.
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

CREATE VIEW HighValueCustomers AS
SELECT DISTINCT
    C.CustomerName,
    C.City
FROM
    Customers AS C
INNER JOIN
    Orders AS O
ON
    C.CustomerID = O.CustomerID
WHERE
    O.Amount > 150;