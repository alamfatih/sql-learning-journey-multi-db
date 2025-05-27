-- Quick coding exercise on Delete Command
-- Delete the student named 'Michael' from the Students table and write a query to see the result.
-- Table Information:
-- The "Students" table contains information about students.
-- Each student is assigned a unique "ID" as the primary key.
-- The "Name" column stores the student's name.
-- The "Age" column stores the student's age.
-- The "Grade" column stores the student's grade.

-- Delete the student named 'Michael'
DELETE FROM Students
WHERE Name = 'Michael';

-- Query to see the result (all remaining students)
SELECT *
FROM Students;