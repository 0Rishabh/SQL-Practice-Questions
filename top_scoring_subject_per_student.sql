


-- =========================================
-- Problem: Find the top scoring subject
-- for each student.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Scores table
CREATE TABLE scores (
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

-- Insert data into scores
INSERT INTO scores VALUES
(1, 'Math', 80),
(1, 'Science', 90),
(1, 'English', 70),
(2, 'Math', 60),
(2, 'Science', 75),
(2, 'English', 85),
(3, 'Math', 95),
(3, 'Science', 85),
(3, 'English', 92);

-- Solution using WINDOW FUNCTION (RANK)
SELECT 
    student_id,
    subject,
    marks
FROM (
    SELECT 
        student_id,
        subject,
        marks,
        RANK() OVER (
            PARTITION BY student_id 
            ORDER BY marks DESC
        ) AS rnk
    FROM scores
) t
WHERE rnk = 1;
