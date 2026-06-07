/* ===================================================================
CONCEPT 21: UNIONS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create two separate tables to combine.
CREATE TABLE current_menu (item_name VARCHAR(50));
CREATE TABLE test_kitchen (item_name VARCHAR(50));

INSERT INTO current_menu VALUES ('Krabby Patty'), ('Coral Fries');
INSERT INTO test_kitchen VALUES ('Krabby Patty'), ('Kelp Shake');

-- 2. Combine both results into a single unique list using UNION.
SELECT item_name FROM current_menu
UNION
SELECT item_name FROM test_kitchen;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
