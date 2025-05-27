-- SQL Script: Calculate Percentage of Absence Days for Each Student

-- Objective:
-- Calculate the percentage of absence days for each student relative to the total absence days recorded for all students.
-- Display the id, first_name, last_name, and the calculated percentage, rounded to two decimal places.
-- Order the results by the percentage in descending order.

SELECT
    id,                                         -- Student's ID
    first_name,                                 -- Student's first name
    last_name,                                  -- Student's last name
    ROUND(                                      -- Round the calculated percentage to two decimal places
        (absence_days::decimal /                -- Cast absence_days to decimal for accurate division
         (SELECT SUM(absence_days) FROM student_scores) -- Calculate total absence days for all students (subquery)
        * 100),                                 -- Multiply by 100 to get percentage
        2
    ) AS absence_percentage                     -- Alias the calculated column as absence_percentage
FROM
    student_scores
ORDER BY
    absence_percentage DESC;                    -- Order the results by the calculated percentage in descending order