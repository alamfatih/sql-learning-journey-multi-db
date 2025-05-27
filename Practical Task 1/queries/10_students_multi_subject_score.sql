-- SQL Script: Identify Students with High Scores in Multiple Subjects

-- Objective:
-- Identify students who have scores above 80 in at least three out of the six subjects:
-- math, history, physics, chemistry, biology, and English.
-- Display their id, first_name, last_name, and the count of subjects where they scored above 80.

SELECT
    id,               -- Student's ID
    first_name,       -- Student's first name
    last_name,        -- Student's last name
    -- Calculate the count of subjects where score is above 80 using CASE WHEN and summing results
    (CASE WHEN math_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN history_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN physics_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN chemistry_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN biology_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN english_score > 80 THEN 1 ELSE 0 END) AS subjects_above_80
FROM
    student_scores
WHERE
    -- Filter students where the sum of subjects above 80 is 3 or more
    (CASE WHEN math_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN history_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN physics_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN chemistry_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN biology_score > 80 THEN 1 ELSE 0 END +
     CASE WHEN english_score > 80 THEN 1 ELSE 0 END) >= 3;