/* ===================================================================
CONCEPT 22: SELF JOINS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table that links rows to other rows inside itself.
CREATE TABLE corporate_hierarchy (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    supervisor_id INT
);

INSERT INTO corporate_hierarchy VALUES 
(1, 'Mr. Krabs', NULL), 
(2, 'SpongeBob', 1), 
(3, 'Squidward', 1);

-- 2. Join the table to itself using aliases (A and B) to pair employees with bosses.
SELECT 
    A.emp_name AS 'Employee', 
    B.emp_name AS 'Reports To'
FROM corporate_hierarchy AS A
INNER JOIN corporate_hierarchy AS B ON A.supervisor_id = B.emp_id;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
