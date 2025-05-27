-- Quick coding exercise on Converting Numbers/ Date to String function
-- Convert the salary of employees in the `Employees` table to strings with a currency symbol and two decimal places.
-- Table Information:
-- The "Employees" table contains information about employees.
-- Each employee is assigned a unique "EmployeeID" as the primary key.
-- The "FirstName" column stores the employee's first name.
-- The "LastName" column stores the employee's last name.
-- The "Salary" column indicates the employee's salary.
-- The "HireDate" column stores the date when the employee was hired.

-- CATATAN: Fungsi konversi ini sangat bergantung pada sistem database yang Anda gunakan.
-- Berikut adalah beberapa contoh umum:

-- Untuk PostgreSQL / Oracle:
SELECT
    FirstName,
    LastName,
    Salary,
    TO_CHAR(Salary, 'FM$999,999.00') AS FormattedSalary -- 'FM' menghilangkan spasi kosong di depan, '$' untuk simbol mata uang, '.00' untuk 2 desimal
FROM
    Employees;

-- Untuk SQL Server:
-- SELECT
--     FirstName,
--     LastName,
--     Salary,
--     FORMAT(Salary, 'C', 'en-US') AS FormattedSalary -- 'C' untuk format mata uang, 'en-US' untuk locale (mengatur simbol '$' dan pemisah ribuan/desimal)
-- FROM
--     Employees;

-- Untuk MySQL:
-- SELECT
--     FirstName,
--     LastName,
--     Salary,
--     CONCAT('$', FORMAT(Salary, 2)) AS FormattedSalary -- FORMAT(number, decimal_places) untuk pembulatan dan pemisah ribuan
-- FROM
--     Employees;