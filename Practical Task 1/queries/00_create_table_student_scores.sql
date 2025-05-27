-- SQL Script to create the 'student_scores' table in PostgreSQL.
-- This table stores student demographic information, academic scores,
-- and other relevant data for analysis.

CREATE TABLE student_scores (
    id SERIAL PRIMARY KEY,               -- Unique identifier for each student, auto-incrementing.
    first_name VARCHAR(100) NOT NULL,    -- Student's first name (cannot be null).
    last_name VARCHAR(100) NOT NULL,     -- Student's last name (cannot be null).
    email VARCHAR(255) UNIQUE,           -- Student's email address (must be unique).
    gender VARCHAR(50),                  -- Student's gender.
    part_time_job BOOLEAN,               -- Indicates if the student has a part-time job (TRUE/FALSE).
    absence_days INT DEFAULT 0,          -- Number of days the student was absent (defaults to 0).
    extracurricular_activities VARCHAR(500), -- Description or list of extracurricular activities.
    weekly_self_study_hours NUMERIC(4,1), -- Hours spent on self-study per week (e.g., 10.5).
    career_aspiration VARCHAR(255),      -- Student's career goals.
    math_score INT,                      -- Score in Mathematics.
    history_score INT,                   -- Score in History.
    physics_score INT,                   -- Score in Physics.
    chemistry_score INT,                 -- Score in Chemistry.
    biology_score INT,                   -- Score in Biology.
    english_score INT,                   -- Score in English.
    geography_score INT                  -- Score in Geography.
);