-- Quick coding exercise on Subquery in From Clause
-- Retrieve the products along with the total order amount (Use column name as TotalAmount) for each product.
-- Table Information:
-- Table 1 - Customers
-- Each customer has a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the customer's name.
-- The "City" column stores the city where the customer is located.
-- Table 2 - Orders
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table,
-- indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Product_Summary.Product,
    Product_Summary.TotalAmount
FROM
    (SELECT Product, SUM(Amount) AS TotalAmount
     FROM Orders
     GROUP BY Product) AS Product_Summary;