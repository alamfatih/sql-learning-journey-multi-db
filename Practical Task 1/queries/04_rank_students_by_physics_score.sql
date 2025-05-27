-- SQL Script: Rank Students by Physics Score within Career Aspiration

-- Objective:
-- Rank students within each career_aspiration category by their physics_score in descending order.
-- Display the first_name, last_name, career_aspiration, physics_score, and the rank.

SELECT
    first_name,            -- Student's first name
    last_name,             -- Student's last name
    career_aspiration,     -- Student's career aspiration
    physics_score,         -- Student's physics score
    -- Calculate rank within each career_aspiration group based on physics_score
    RANK() OVER (PARTITION BY career_aspiration ORDER BY physics_score DESC) AS rank_in_career
FROM
    student_scores
ORDER BY
    career_aspiration,     -- Order results first by career aspiration
    rank_in_career;        -- Then by the calculated rank within each aspiration