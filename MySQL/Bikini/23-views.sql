/* ===================================================================
CONCEPT 23: VIEWS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a virtual table (View) that hides complex logic or sensitive data.
CREATE VIEW kitchen_staff_view AS
SELECT staff_name, dept_id 
FROM staff_members
WHERE dept_id = 1;

-- 2. Query the view exactly like a normal table.
SELECT * FROM kitchen_staff_view;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
