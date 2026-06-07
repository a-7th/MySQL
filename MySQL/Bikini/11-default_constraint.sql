/* ===================================================================
CONCEPT 11: DEFAULT CONSTRAINT
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table where a column automatically assigns a value if left blank.
CREATE TABLE custom_orders (
    order_id INT,
    item_name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Pending' -- Automatically becomes 'Pending' if not specified
);

-- 2. Insert a row without specifying the status to let the DEFAULT kick in.
INSERT INTO custom_orders (order_id, item_name) 
VALUES (1, 'Krabby Patty Deluxe');

-- 3. Verify that the status column was automatically filled.
SELECT * FROM custom_orders;
