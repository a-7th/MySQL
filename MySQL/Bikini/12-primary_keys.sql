/* ===================================================================
CONCEPT 12: PRIMARY KEYS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table with a definitive PRIMARY KEY (Unique + Not Null identifier).
CREATE TABLE permanent_employees (
    employee_id INT PRIMARY KEY, -- This uniquely identifies every single row
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- 2. Insert valid records.
INSERT INTO permanent_employees VALUES (1, 'SpongeBob', 'SquarePants');
INSERT INTO permanent_employees VALUES (2, 'Squidward', 'Tentacles');

-- 3. TRYING TO FAIL: This will fail because employee_id 1 already exists.
-- INSERT INTO permanent_employees VALUES (1, 'Patrick', 'Star');
