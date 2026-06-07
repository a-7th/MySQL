/* ===================================================================
CONCEPT 15: JOINS (INNER, LEFT, RIGHT)
===================================================================
*/
USE bikini_bottom_db;

-- 1. Insert an unassigned staff member to demonstrate different join behaviors.
INSERT INTO staff_members (staff_name, dept_id) VALUES ('Patrick', NULL);

-- 2. INNER JOIN: Only shows matches where staff have a department.
SELECT staff_members.staff_name, departments.department_name
FROM staff_members
INNER JOIN departments ON staff_members.dept_id = departments.department_id;

-- 3. LEFT JOIN: Shows ALL staff, even Patrick who doesn't have a department.
SELECT staff_members.staff_name, departments.department_name
FROM staff_members
LEFT JOIN departments ON staff_members.dept_id = departments.department_id;
