-- SQL Script: Identify Students with Math Score Above School Average

-- Objective:
-- Identify students who have a math_score higher than the school's average math score.
-- List their first_name, last_name, and math_score.

SELECT
    first_name,  -- Selects the student's first name
    last_name,   -- Selects the student's last name
    math_score   -- Selects the student's math score
FROM
    student_scores -- Specifies the table to retrieve data from
WHERE
    math_score > (SELECT AVG(math_score) FROM student_scores); -- Filters students whose math score is greater than the overall average math score of all students (calculated by the subquery)