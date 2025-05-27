-- Quick coding exercise on SUBSTRING function
-- Retrieve the first three characters of each product name from the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Product,
    SUBSTRING(Product, 1, 3) AS Product_Prefix -- Mengambil 3 karakter dari posisi pertama
FROM
    Orders;