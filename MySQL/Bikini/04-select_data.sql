/* ===================================================================
CONCEPT 4: SELECT DATA FROM TABLE
===================================================================
*/
USE bikini_bottom_db;

-- 1. Select specific columns (first_name and job_title) for all records.
SELECT first_name, job_title 
FROM temp_employees;

-- 2. Select ALL columns from the table using the wildcard (*).
SELECT * FROM temp_employees;
