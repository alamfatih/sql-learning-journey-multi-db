-- SQL Script: Calculate Average Math Score by Career Aspiration

-- Objective:
-- Calculate the average math_score for each career_aspiration.
-- Order the results by the average score in descending order.

SELECT
    career_aspiration,                 -- Selects the career aspiration category
    AVG(math_score) AS avg_math_score  -- Calculates the average math score for each category, aliased as avg_math_score
FROM
    student_scores                     -- Specifies the table to retrieve data from
GROUP BY
    career_aspiration                  -- Groups the results by career aspiration to calculate average for each unique aspiration
ORDER BY
    avg_math_score DESC;               -- Orders the final result set by the calculated average math score in descending order (highest average first)