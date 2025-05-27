-- Quick coding exercise on Alter Command
-- Add a new column named 'City' to the Employees table to store the city where each employee lives
-- and write a query to see all the records.
-- Table Information:
-- The "Employees" table contains information about employees within an organization.
-- Each employee is assigned a unique "EmployeeID" as the primary key.
-- The "FirstName" column stores the employee's first name.
-- The "LastName" column stores the employee's last name.
-- The "Department" column indicates the department to which the employee belongs.

-- Add the new 'City' column to the 'Employees' table
ALTER TABLE Employees
ADD COLUMN City VARCHAR(255); -- VARCHAR(255) adalah tipe data umum untuk teks, sesuaikan panjang jika perlu

-- Query to see all records with the new column
SELECT *
FROM Employees;