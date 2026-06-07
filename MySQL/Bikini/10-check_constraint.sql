/* ===================================================================
CONCEPT 10: CHECK CONSTRAINT
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table with a rule validating the value ranges entering a column.
CREATE TABLE secure_vault (
    item_id INT,
    item_name VARCHAR(50),
    security_clearance_level INT,
    CONSTRAINT chk_clearance CHECK (security_clearance_level >= 1 AND security_clearance_level <= 5)
);

-- 2. TRYING TO FAIL: This will break the constraint because 10 is outside our 1-5 rule.
-- INSERT INTO secure_vault VALUES (1, 'Secret Formula', 10);
