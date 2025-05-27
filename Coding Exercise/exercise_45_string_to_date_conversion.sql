-- Quick coding exercise on Converting String to Numbers/ Date function
-- Retrieve the birthdates of customers from the `Customers` table, converting them to DATE data type.
-- Table Information:
-- The "Customers" table contains information about customers.
-- Each customer is assigned a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the customer's name.
-- The "Birthdate" column stores the customer's birthdate.

-- CATATAN: Fungsi konversi ini sangat bergantung pada sistem database yang Anda gunakan
-- dan format string tanggal di kolom 'Birthdate' Anda.

-- Pendekatan Standar SQL (umumnya didukung luas jika format string mudah dikenali, mis. 'YYYY-MM-DD'):
SELECT
    CustomerName,
    Birthdate, -- Kolom asli (string)
    CAST(Birthdate AS DATE) AS ConvertedBirthdate -- Mengkonversi ke tipe data DATE
FROM
    Customers;

-- Jika menggunakan PostgreSQL / Oracle (lebih fleksibel untuk format string yang berbeda):
-- SELECT
--     CustomerName,
--     Birthdate,
--     TO_DATE(Birthdate, 'YYYY-MM-DD') AS ConvertedBirthdate -- Ganti 'YYYY-MM-DD' sesuai format string Birthdate Anda
-- FROM
--     Customers;

-- Jika menggunakan SQL Server:
-- SELECT
--     CustomerName,
--     Birthdate,
--     CONVERT(DATE, Birthdate) AS ConvertedBirthdate -- Atau CONVERT(DATE, Birthdate, style_code) jika ada style spesifik
-- FROM
--     Customers;