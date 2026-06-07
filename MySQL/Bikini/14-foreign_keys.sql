/* ===================================================================
CONCEPT 14: FOREIGN KEYS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a parent table to connect into.
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50)
);

-- 2. Create a child table containing a FOREIGN KEY pointing to the parent.
CREATE TABLE staff_members (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(department_id) -- Links tables together
);

-- 3. Insert data into the parent table first.
INSERT INTO departments (department_name) VALUES ('Kitchen'), ('Management');

-- 4. Insert data into child table pointing to valid parent IDs (1 and 2).
INSERT INTO staff_members (staff_name, dept_id) VALUES ('SpongeBob', 1);
INSERT INTO staff_members (staff_name, dept_id) VALUES ('Mr. Krabs', 2);
