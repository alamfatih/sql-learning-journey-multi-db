-- Quick coding exercise on CEIL & FLOOR functions
-- Retrieve the Amount column along with ceiling values of the order amounts from the `Orders` table.
-- Table Information:
-- The "Orders" table contains information about customer orders.
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerID" column is a foreign key that links to the "CustomerID" in the "Customers" table, indicating which customer placed the order.
-- The "Product" column stores the product ordered.
-- The "Amount" column stores the order amount.

SELECT
    Amount,
    CEIL(Amount) AS CeilingAmount,   -- Mengambil nilai bilangan bulat terkecil yang lebih besar atau sama dengan Amount
    FLOOR(Amount) AS FloorAmount     -- Mengambil nilai bilangan bulat terbesar yang lebih kecil atau sama dengan Amount
FROM
    Orders;