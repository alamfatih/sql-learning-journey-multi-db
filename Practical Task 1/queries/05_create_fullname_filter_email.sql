-- SQL Script: Create Full Name and Filter by Email Domain

-- Objective:
-- For each student, create a new column full_name by concatenating first_name and last_name with a space in between.
-- Show the full_name and email columns where the email contains the string "academy".

SELECT
    CONCAT(first_name, ' ', last_name) AS full_name, -- Concatenates first_name and last_name with a space to create full_name
    email                                           -- Selects the email column
FROM
    student_scores                                  -- Specifies the table to retrieve data from
WHERE
    email LIKE '%academy%';                         -- Filters the results to include only students whose email contains the string "academy"