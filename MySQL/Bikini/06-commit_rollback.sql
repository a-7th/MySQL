/* ===================================================================
CONCEPT 6: AUTO_COMMIT, COMMIT, ROLLBACK
===================================================================
*/
USE bikini_bottom_db;

-- 1. Turn off auto-commit so changes aren't permanent automatically.
SET autocommit = OFF;

-- 2. Start a transaction transaction manually.
START TRANSACTION;

-- 3. Make a test deletion.
DELETE FROM temp_employees WHERE employee_id = 4;

-- 4. Change your mind! Roll back the deletion to restore Patrick.
ROLLBACK;

-- 5. Make a change and save it permanently using COMMIT.
START TRANSACTION;
UPDATE temp_employees SET hourly_pay = 16.00 WHERE employee_id = 1;
COMMIT;

-- Turn auto-commit back on for normal operations.
SET autocommit = ON;
