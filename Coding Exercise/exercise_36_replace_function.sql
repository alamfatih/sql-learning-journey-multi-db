-- Quick coding exercise on REPLACE function
-- Retrieve the product names from the `Orders` table, replacing 'Widget' with 'Item'.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Product,
    REPLACE(Product, 'Widget', 'Item') AS ModifiedProduct
FROM
    Orders;