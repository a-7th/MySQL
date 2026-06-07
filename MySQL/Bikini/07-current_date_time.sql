/* ===================================================================
CONCEPT 7: CURRENT_DATE, CURRENT_TIME
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a quick log table to track shift check-ins.
CREATE TABLE shift_logs (
    log_id INT,
    employee_name VARCHAR(50),
    date_recorded DATE,
    time_recorded TIME
);

-- 2. Insert a row using CURRENT_DATE and CURRENT_TIME functions to capture the exact moment.
INSERT INTO shift_logs (log_id, employee_name, date_recorded, time_recorded)
VALUES (1, 'SpongeBob', CURRENT_DATE, CURRENT_TIME);
