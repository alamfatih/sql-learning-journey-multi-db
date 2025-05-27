-- Quick coding exercise on Index
-- Create an index on the `Product` column of the `Orders` table to optimize search queries based on products.
-- Table Information:
-- Table 1 - Orders
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table,
-- indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

CREATE INDEX idx_orders_product -- Penamaan indeks yang disarankan: idx_nama_tabel_nama_kolom
ON Orders (Product);