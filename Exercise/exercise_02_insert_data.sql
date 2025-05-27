-- Exercise 2: Insert the following data into Science_class using insert into command
-- The following table:
-- "1 Popeye", "33"
-- "2 Olive", "54"
-- "3 Brutus", "98"
INSERT INTO Science_class (Enrollment_no, Name, Science_Marks) VALUES (1, 'Popeye', 33);
INSERT INTO Science_class (Enrollment_no, Name, Science_Marks) VALUES (2, 'Olive', 54);
INSERT INTO Science_class (Enrollment_no, Name, Science_Marks) VALUES (3, 'Brutus', 98);

-- Exercise 2: Import data from csv file 'Student.csv' attached in resources to Science_class to insert data of next 8 students
-- CATATAN PENTING:
-- Perintah COPY (atau \copy di psql) bersifat spesifik untuk PostgreSQL.
-- Untuk database lain (MySQL, SQL Server, Oracle), perintah import akan berbeda.
-- Pastikan 'address/student.csv' diganti dengan PATH LENGKAP dan BENAR ke file CSV Anda.
-- Contoh path di Windows: 'C:/Users/YourUser/Documents/student.csv'
-- Contoh path di Linux/macOS: '/home/YourUser/Documents/student.csv'
COPY Science_class FROM 'address/student.csv' CSV HEADER;