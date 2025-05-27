-- SQL Script: Find Career Aspirations with High Average English Scores

-- Objective:
-- Find the career_aspirations that have an average english_score greater than 75.
-- Display the career aspiration and the average score.

SELECT
    career_aspiration,                  -- Selects the career aspiration category
    AVG(english_score) AS avg_english_score -- Calculates the average English score for each category, aliased as avg_english_score
FROM
    student_scores                      -- Specifies the table to retrieve data from
GROUP BY
    career_aspiration                   -- Groups the results by career aspiration
HAVING
    AVG(english_score) > 75             -- Filters the grouped results, keeping only those with average English score > 75
ORDER BY
    avg_english_score DESC;             -- Orders the final result set by the calculated average English score in descending order