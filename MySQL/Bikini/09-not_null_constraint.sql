/* ===================================================================
CONCEPT 9: NOT NULL CONSTRAINT
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table where specific columns are strictly forbidden from being empty (NULL).
CREATE TABLE registered_customers (
    customer_id INT,
    first_name VARCHAR(50) NOT NULL, -- Cannot be empty
    last_name VARCHAR(50) NOT NULL   -- Cannot be empty
);

-- 2. TRYING TO FAIL: This line will fail because last_name is missing.
-- INSERT INTO registered_customers (customer_id, first_name) VALUES (1, 'Plankton');
