-- Exercise 1: Create a Database 'Classroom'
-- Perintah untuk membuat database biasanya bervariasi tergantung pada sistem database yang digunakan.
-- Untuk PostgreSQL/MySQL:
CREATE DATABASE Classroom;

-- Pastikan Anda terhubung ke database 'Classroom' setelah membuatnya,
-- atau jika menggunakan psql, Anda bisa melakukan \c Classroom

-- Exercise 1: Create a table named 'Science_class' with the following properties [cite: 2]
--             3 Columns (Enrollment_no INT, Name VARCHAR, Science_Marks INT) [cite: 2]
CREATE TABLE Science_class
(
    Enrollment_no INT,
    Name VARCHAR(255), -- Gunakan VARCHAR dengan panjang maksimum yang sesuai
    Science_Marks INT
);