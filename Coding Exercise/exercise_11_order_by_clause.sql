-- Quick coding exercise on Order by Clause
-- Retrieve the first and last names of employees from the `Employees` table ordered by last name in alphabetical order.
-- Table Information:
-- The "Employees" table contains information about employees within an organization.
-- Each employee is assigned a unique "EmployeeID" as the primary key.
-- The "FirstName" column stores the employee's first name.
-- The "LastName" column stores the employee's last name.
-- The "Department" column indicates the department to which the employee belongs.

SELECT
    FirstName,
    LastName
FROM
    Employees
ORDER BY
    LastName ASC; -- ASC (Ascending) adalah default, bisa dihilangkan jika diinginkan