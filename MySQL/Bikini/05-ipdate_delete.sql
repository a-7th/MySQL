/* ===================================================================
CONCEPT 5: UPDATE AND DELETE DATA FROM TABLE
===================================================================
*/
USE bikini_bottom_db;

-- 1. UPDATE: Give Patrick a raise by changing his hourly_pay.
UPDATE temp_employees
SET hourly_pay = 12.50
WHERE employee_id = 4;

-- 2. DELETE: Remove Squidward from the table using his employee_id.
DELETE FROM temp_employees
WHERE employee_id = 2;
