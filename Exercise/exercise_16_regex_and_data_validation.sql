-- Exercise 16: Find out all customers who have first name and last name of 5 characters each and last name starts with "a/b/c/d"
-- CATATAN: Operator '~' digunakan untuk pencocokan ekspresi reguler di PostgreSQL.
-- Untuk MySQL, Anda bisa menggunakan REGEXP atau RLIKE.
-- Untuk SQL Server, Anda mungkin perlu CLR functions atau kombinasi LIKE/SUBSTRING yang kompleks.
-- Solusi ini mengasumsikan format 'firstname lastname' di kolom customer_name.
SELECT *
FROM customer
WHERE customer_name ~ '^[a-z]{5}\s(a|b|c|d)[a-z]{4}$';

-- Exercise 16: Create a table "zipcode" and insert the below data in it
-- PIN/ZIP codes: 234432, 23345, sdfe4, 123&3, 67424, 7895432, 12312
CREATE TABLE zipcode (zip VARCHAR(255)); -- Gunakan panjang yang cukup untuk VARCHAR

INSERT INTO zipcode VALUES ('234432');
INSERT INTO zipcode VALUES ('23345');
INSERT INTO zipcode VALUES ('sdfe4');
INSERT INTO zipcode VALUES ('123&3');
INSERT INTO zipcode VALUES ('67424');
INSERT INTO zipcode VALUES ('7895432');
INSERT INTO zipcode VALUES ('12312');

-- Exercise 16: Find out the valid zipcodes from this table (5 or 6 Numeric characters)
-- CATATAN: Kembali menggunakan operator '~' untuk regex di PostgreSQL.
-- Pola '^[0-9]{5,6}$' berarti:
-- ^ : Mulai dari awal string
-- [0-9] : Cocokkan digit apa pun (0 sampai 9)
-- {5,6} : Ulangi digit sebelumnya minimal 5 kali dan maksimal 6 kali
-- $ : Sampai akhir string
SELECT *
FROM zipcode
WHERE zip ~ '^[0-9]{5,6}$';