/* ===================================================================
CONCEPT 8: UNIQUE CONSTRAINT
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table where a column forces every value to be completely unique.
CREATE TABLE store_products (
    product_id INT,
    product_name VARCHAR(50),
    barcode_id INT UNIQUE -- No two products can share the same barcode_id
);

-- 2. Insert a valid row.
INSERT INTO store_products VALUES (1, 'Krabby Patty', 9991);

-- 3. TRYING TO FAIL: This next line will fail if you try to run it because the barcode is duplicate.
-- INSERT INTO store_products VALUES (2, 'Kelp Shake', 9991);
