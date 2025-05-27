-- Quick coding exercise on Pattern Matching Basics
-- Retrieve the names of students from the `Students` table whose names start with the letter 'Ja'.
-- Table Information:
-- The "Students" table contains information about students.
-- Each student is assigned a unique "ID" as the primary key.
-- The "Name" column stores the student's name.
-- The "Age" column stores the student's age.
-- The "Grade" column stores the student's grade.

SELECT Name
FROM Students
WHERE Name LIKE 'Ja%';