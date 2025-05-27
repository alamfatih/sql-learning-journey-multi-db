-- Quick coding exercise on TRIM, LTRIM, RTRIM functions
-- Retrieve the product names from the `Orders` table, trimming any leading or trailing spaces.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Product,
    TRIM(Product) AS TrimmedProduct,    -- Menghapus spasi di awal dan akhir
    LTRIM(Product) AS LTrimmedProduct,  -- Menghapus spasi di awal saja
    RTRIM(Product) AS RTrimmedProduct   -- Menghapus spasi di akhir saja
FROM
    Orders;