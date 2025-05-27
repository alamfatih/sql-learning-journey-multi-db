-- Exercise 5: Backup this database into a TAR file
-- CATATAN PENTING:
-- Perintah backup database tidak dijalankan di dalam klien SQL (misalnya psql atau MySQL Workbench).
-- Ini adalah perintah shell/command line yang dijalankan di terminal sistem operasi Anda.
-- Contoh untuk PostgreSQL (menggunakan pg_dump):
-- pg_dump -U your_username -F t -f /path/to/your/backup/classroom_backup.tar Classroom

-- Contoh untuk MySQL (menggunakan mysqldump):
-- mysqldump -u your_username -p --databases Classroom > /path/to/your/backup/classroom_backup.sql
-- (Catatan: MySQL dump biasanya menghasilkan file .sql, bukan .tar secara langsung untuk database utuh.
--  Anda bisa mengarsipkannya ke .tar setelah itu jika diperlukan.)

-- Exercise 5: Drop the 'science_class' table
DROP TABLE Science_class;

-- Exercise 5: Restore from the backup file to get back the deleted table
-- CATATAN PENTING:
-- Perintah restore database juga dijalankan di terminal sistem operasi Anda.
-- Anda harus memastikan database tujuan sudah ada atau dibuat sebelum restore.
-- Contoh untuk PostgreSQL (menggunakan pg_restore):
-- pg_restore -U your_username -d Classroom /path/to/your/backup/classroom_backup.tar

-- Contoh untuk MySQL (dari file .sql):
-- mysql -u your_username -p Classroom < /path/to/your/backup/classroom_backup.sql