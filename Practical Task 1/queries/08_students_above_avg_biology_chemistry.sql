-- SQL Script: Identify Students Scoring Above Average in Biology and Chemistry

-- Objective:
-- Identify students who score above average in both biology and chemistry,
-- compared to the school's average for those subjects.
-- Display their id, first_name, last_name, biology_score, and chemistry_score.

SELECT
    id,              -- Student's ID
    first_name,      -- Student's first name
    last_name,       -- Student's last name
    biology_score,   -- Student's biology score
    chemistry_score  -- Student's chemistry score
FROM
    student_scores   -- Specifies the table to retrieve data from
WHERE
    biology_score > (SELECT AVG(biology_score) FROM student_scores) -- Filters students whose biology score is greater than the school's average biology score
    AND chemistry_score > (SELECT AVG(chemistry_score) FROM student_scores); -- Filters students whose chemistry score is greater than the school's average chemistry score