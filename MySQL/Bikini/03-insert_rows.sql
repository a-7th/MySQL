/* ===================================================================
CONCEPT 3: INSERT ROWS INTO TABLES
===================================================================
*/
USE bikini_bottom_db;

-- 1. Insert multiple rows of data into our new table.
INSERT INTO temp_employees (employee_id, first_name, last_name, hourly_pay, job_title) 
VALUES 
(1, 'SpongeBob', 'SquarePants', 15.50, 'Fry Cook'),
(2, 'Squidward', 'Tentacles', 20.00, 'Cashier'),
(3, 'Eugene', 'Krabs', 95.00, 'Owner'),
(4, 'Patrick', 'Star', 10.00, 'Mascot');
