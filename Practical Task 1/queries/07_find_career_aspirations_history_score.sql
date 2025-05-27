-- SQL Script: Find Career Aspirations with High Average History Scores and Sufficient Student Count

-- Objective:
-- Find career aspirations where the average history_score is above 85
-- AND at least 5 students aspire to that career.
-- List the career_aspiration and the average score.

SELECT
    career_aspiration,                  -- Selects the career aspiration category
    AVG(history_score) AS average_history_score -- Calculates the average history score for each category
FROM
    student_scores                      -- Specifies the table to retrieve data from
GROUP BY
    career_aspiration                   -- Groups the results by career aspiration
HAVING
    AVG(history_score) > 85             -- Filters the grouped results: average history score must be > 85
    AND COUNT(id) >=5;                  -- Further filters: there must be at least 5 students in that career aspiration