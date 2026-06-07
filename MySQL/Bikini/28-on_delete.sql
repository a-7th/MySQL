/* ===================================================================
CONCEPT 28: ON DELETE RULES
===================================================================
*/
USE bikini_bottom_db;

CREATE TABLE custom_departments (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- 1. Child table tracks rules for automated cleanup when a parent id vanishes.
CREATE TABLE custom_staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES custom_departments(id) 
        ON DELETE SET NULL -- Or use ON DELETE CASCADE based on dependency needs
);

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
