/* ===================================================================
CONCEPT 2: CREATE TABLE
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a basic table to hold employee records.
--    At this basic stage, we aren't using advanced constraints yet.
CREATE TABLE temp_employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    job_title VARCHAR(50)
);
