-- Quick coding exercise on Select Statement
-- Retrieve the first names and departments of all employees.
-- Table Information:
-- The "Employees" table contains information about employees within an organization.
-- Each employee is assigned a unique "EmployeeID" as the primary key.
-- The "FirstName" and "LastName" columns store the employee's first and last names, respectively.
-- The "Department" column indicates the department to which the employee belongs.

SELECT
    FirstName,
    Department
FROM
    Employees;