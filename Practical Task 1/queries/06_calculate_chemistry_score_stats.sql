-- SQL Script: Calculate Chemistry Score Statistics

-- Objective:
-- Calculate the lowest (FLOOR), highest (CEIL), and average (ROUND to two decimal places) chemistry_score for each gender (as per solution).
-- Display the gender, lowest score, highest score, and average score.
-- Note: The problem asks for 'each carreraspirats', but the provided solution groups by 'gender'.
-- This solution follows the provided 'gender' grouping.

SELECT
    gender,                                    -- Grouping by gender (as per solution)
    FLOOR(MIN(chemistry_score)) AS lowest_score, -- Calculates the lowest chemistry score, rounded down to the nearest integer
    CEIL(MAX(chemistry_score)) AS highest_score, -- Calculates the highest chemistry score, rounded up to the nearest integer
    ROUND(AVG(chemistry_score), 2) AS average_score -- Calculates the average chemistry score, rounded to two decimal places
FROM
    student_scores
GROUP BY
    gender;                                    -- Groups the results by gender to calculate aggregates for each