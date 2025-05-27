-- Quick coding exercise on CURRENT DATE & TIME function
-- Retrieve the current date and time.
-- Table Information:
-- Table 1 - OrdersDate
-- Each order has a unique "OrderID" as the primary key.
-- The "CustomerName" column stores the name of the customer who placed the order.
-- The "OrderDate" column stores the date and time when the order was placed in the TIMESTAMP format, including both the date and time components.

-- Mengambil tanggal dan waktu saat ini (umum dan portabel di banyak database seperti PostgreSQL, MySQL, SQLite)
SELECT NOW() AS CurrentDateTime;

-- Alternatif lain yang umum dan standar SQL:
-- SELECT CURRENT_TIMESTAMP AS CurrentDateTime;

-- Jika menggunakan SQL Server:
-- SELECT GETDATE() AS CurrentDateTime;