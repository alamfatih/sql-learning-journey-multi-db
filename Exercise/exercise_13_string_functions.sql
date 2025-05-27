-- Exercise 13: Find Maximum length of characters in the Product name string from Product table
SELECT MAX(LENGTH(product_name)) FROM product;

-- Exercise 13: Retrieve product name, sub-category and category from Product table and an additional column named "product_details" which contains a concatenated string of product name, sub-category and category
SELECT
    product_name,
    sub_category,
    category,
    (product_name || ', ' || sub_category || ', ' || category) AS product_details
FROM
    product;

-- Exercise 13: Analyze the product_id column and take out the three parts composing the product_id in three different columns
-- As per the solution, it assumes product_id format like 'AAA-BB-CCCC' where parts are 3, 2, and rest characters.
-- For example, 'TEC-PH-10000'
SELECT
    product_id,
    SUBSTRING(product_id FOR 3) AS category_short, -- Ambil 3 karakter pertama
    SUBSTRING(product_id FROM 5 FOR 2) AS sub_short, -- Ambil 2 karakter dari posisi ke-5 (setelah '-')
    SUBSTRING(product_id FROM 8) AS id -- Ambil sisa karakter dari posisi ke-8
FROM
    product;

-- Exercise 13: List down comma separated product name where sub-category is either Chairs or Tables
-- CATATAN: Fungsi STRING_AGG() adalah spesifik untuk PostgreSQL.
-- Untuk MySQL, Anda bisa menggunakan GROUP_CONCAT().
-- Untuk SQL Server, Anda bisa menggunakan STRING_AGG() (SQL Server 2017+) atau teknik FOR XML PATH.
SELECT STRING_AGG(product_name, ', ')
FROM product
WHERE sub_category IN ('Chairs', 'Tables');