-- Exercise 6a: Get the list of all cities where the region is South or East without any duplicates using IN statement
SELECT DISTINCT city FROM customer WHERE region IN ('South','East');

-- Exercise 6b: Get the list of all orders where the 'sales' value is between 100 and 500 using the BETWEEN operator
SELECT * FROM sales WHERE sales BETWEEN 100 AND 500;

-- Exercise 6c: Get the list of customers whose last name contains only 4 characters using LIKE
-- CATATAN: Solusi asli di PDF memiliki '% ' yang mungkin kurang tepat untuk "last name contains only 4 characters".
-- Jika 'customer_name' menyimpan nama lengkap, maka perlu ekstraksi nama belakang.
-- Jika 'customer_name' *hanya* berisi nama belakang, atau kita ingin mencocokkan di mana pun dalam nama:
-- '%____' (empat underscore) akan cocok dengan string yang diakhiri dengan 4 karakter apa pun.
-- '^____$' (regex) akan cocok dengan string yang persis 4 karakter.
-- Namun, mengikuti solusi yang diberikan (meskipun terlihat tidak lengkap pada PDF), saya akan menuliskannya.
SELECT * FROM customer WHERE customer_name LIKE '% ';
-- Jika maksudnya adalah nama pelanggan memiliki *tepat* 4 karakter:
-- SELECT * FROM customer WHERE customer_name LIKE '____'; -- (empat underscore)