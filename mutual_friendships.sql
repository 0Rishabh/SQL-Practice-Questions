

-- =========================================
-- Problem: Find mutual friendships where
-- A is friend of B and B is friend of A.
-- Avoid duplicate pairs.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Friends table
CREATE TABLE friends (
    person_id INT,
    friend_id INT
);

-- Insert data into friends
INSERT INTO friends VALUES
(1, 2),
(2, 1),
(1, 3),
(3, 1),
(2, 3),
(3, 2),
(4, 5);

-- Solution using SELF JOIN
SELECT 
    a.person_id,
    a.friend_id
FROM friends a
JOIN friends b
    ON a.person_id = b.friend_id
   AND a.friend_id = b.person_id
WHERE a.person_id < a.friend_id;
