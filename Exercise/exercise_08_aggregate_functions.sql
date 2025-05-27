-- Exercise 8: Find the sum of all 'sales' values.
SELECT SUM(sales) FROM sales;

-- Exercise 8: Find count of the number of customers in north region with age between 20 and 30
-- CATATAN: Soal hanya menyebut "north region" tetapi solusi yang diberikan tidak memfilter berdasarkan region.
-- Jika ingin sesuai soal "north region":
-- SELECT COUNT(*) FROM customer WHERE region = 'North' AND age BETWEEN 20 AND 30;
-- Namun, mengikuti solusi yang diberikan di PDF:
SELECT COUNT(*) FROM customer WHERE age BETWEEN 20 AND 30;

-- Exercise 8: Find the average age of East region customers
SELECT AVG(age) FROM customer WHERE region = 'East';

-- Exercise 8: Find the Minimum and Maximum aged customer from Philadelphia
SELECT MIN(age) AS min_age, MAX(age) AS max_age FROM customer WHERE city = 'Philadelphia';