-- Exercise 14: You are running a lottery for your customers. So, pick a list of 5 Lucky customers from customer table using random function
-- CATATAN: Fungsi RANDOM() adalah spesifik untuk PostgreSQL dan beberapa DB lain.
-- Untuk MySQL, Anda bisa menggunakan RAND().
-- Untuk SQL Server, Anda bisa menggunakan NEWID() dengan ORDER BY.
SELECT customer_id, RANDOM() AS rand_n
FROM customer
ORDER BY rand_n
LIMIT 5;

-- Exercise 14: Suppose you cannot charge the customer in fraction points.
--              So, for sales value of 1.63, you will get either 1 or 2. In such a scenario, find out
--              a) Total sales revenue if you are charging the lower integer value of sales always
--              b) Total sales revenue if you are charging the higher integer value of sales always
--              c) Total sales revenue if you are rounding-off the sales always
SELECT
    SUM(CEIL(sales)) AS higher_int_sales, -- a) Total sales revenue if charging the higher integer value (CEIL)
    SUM(FLOOR(sales)) AS lower_int_sales, -- b) Total sales revenue if charging the lower integer value (FLOOR)
    SUM(ROUND(sales)) AS round_int_sales  -- c) Total sales revenue if rounding-off the sales (ROUND)
FROM
    sales;