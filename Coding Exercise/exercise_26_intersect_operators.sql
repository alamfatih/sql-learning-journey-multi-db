-- Quick coding exercise on Intersect and Intersect ALL
-- Retrieve the Common Name from the Customers and Passengers tables.
-- Table Information:
-- Table 1 - Customers
-- Each customer has a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "City" column stores the city where the customer is located.
-- Table 2 - Passengers
-- Each order has a unique "PassengerID" as the primary key.
-- The "PassengerName" column stores the name of the customer.
-- The "City" column stores the city where the customer is located.

-- 1. Menggunakan INTERSECT (untuk mendapatkan nama umum yang unik/DISTINCT)
SELECT CustomerName
FROM Customers

INTERSECT

SELECT PassengerName
FROM Passengers;

-- 2. Menggunakan INTERSECT ALL (untuk mendapatkan nama umum, termasuk duplikat jika muncul di kedua tabel dengan frekuensi yang sama)
-- CATATAN: INTERSECT ALL tidak didukung di semua database (misalnya, MySQL tidak mendukungnya).
-- Ini lebih umum di PostgreSQL dan Oracle.
SELECT CustomerName
FROM Customers

INTERSECT ALL

SELECT PassengerName
FROM Passengers;