-- Exercise 15: Find out the current age of "Batman" who was born on "April 6, 1939" in Years, months and days
-- CATATAN: Fungsi AGE() adalah spesifik untuk PostgreSQL.
-- Untuk SQL Server, MySQL, Oracle, Anda perlu menggunakan fungsi tanggal/waktu lain (misalnya DATEDIFF, TIMESTAMPDIFF).
SELECT AGE(CURRENT_DATE, '1939-04-06');

-- Exercise 15: Analyze and find out the monthly sales of sub-category chair. Do you observe any seasonality in sales of this sub-category
-- CATATAN: Fungsi EXTRACT() adalah standar SQL dan didukung luas.
SELECT
    EXTRACT(MONTH FROM order_date) AS month_n, -- Ekstrak bulan dari tanggal order
    SUM(sales) AS total_sales
FROM
    sales
WHERE
    product_id IN (SELECT product_id FROM product WHERE sub_category = 'Chairs') -- Filter untuk sub-kategori 'Chairs'
GROUP BY
    month_n
ORDER BY
    month_n;