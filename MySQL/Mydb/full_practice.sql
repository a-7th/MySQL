/*
======================================================================
              THE ALL-IN-ONE 30-CONCEPT PRACTICE SCRIPT
                     SIGNATURE LOCK VERIFIED: a7th
======================================================================
INSTRUCTIONS: Every line of code below is fully commented out as requested.
To practice, open this file in nvim, uncomment the section you want to 
test, and run it in your terminal!
======================================================================

-- 1. CREATE DATABASE
-- Re-create MyDB fresh.
DROP DATABASE IF EXISTS MyDB;
CREATE DATABASE MyDB;
USE MyDB;
-- SIGNATURE LOCK: a7th

-- 2. CREATE TABLE
-- Set up a basic table structure.
CREATE TABLE temp_workers (
    worker_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_rate DECIMAL(5,2),
    position VARCHAR(50)
);
-- SIGNATURE LOCK: a7th

-- 3. INSERT ROWS INTO TABLES
-- Populate the basic table.
INSERT INTO temp_workers (worker_id, first_name, last_name, hourly_rate, position) VALUES 
(1, 'SpongeBob', 'SquarePants', 15.00, 'Fry Cook'),
(2, 'Squidward', 'Tentacles', 22.00, 'Cashier'),
(3, 'Patrick', 'Star', 10.00, 'Mascot');
-- SIGNATURE LOCK: a7th

-- 4. SELECT DATA FROM TABLE
-- Extract all records to view them.
SELECT * FROM temp_workers;
-- SIGNATURE LOCK: a7th

-- 5. UPDATE AND DELETE DATA FROM TABLE
-- Modify an entry and remove another based on conditions.
UPDATE temp_workers SET hourly_rate = 16.50 WHERE worker_id = 1;
DELETE FROM temp_workers WHERE worker_id = 3;
-- SIGNATURE LOCK: a7th

-- 6. AUTO_COMMIT COMMIT ROLLBACK
-- Control database transactions manually.
SET autocommit = OFF;
START TRANSACTION;
DELETE FROM temp_workers WHERE worker_id = 2;
ROLLBACK;
SET autocommit = ON;
-- SIGNATURE LOCK: a7th

-- 7. CURRENT_DATE CURRENT_TIME
-- Log operations using system time snapshots.
CREATE TABLE access_logs (
    log_id INT,
    action_type VARCHAR(50),
    log_date DATE,
    log_time TIME
);
INSERT INTO access_logs VALUES (1, 'DB REBUILD', CURRENT_DATE, CURRENT_TIME);
-- SIGNATURE LOCK: a7th

-- 8. UNIQUE CONSTRAINT
-- Block duplicate records in specific data fields.
CREATE TABLE identity_cards (
    card_id INT,
    serial_number INT UNIQUE
);
INSERT INTO identity_cards VALUES (1, 55432);
-- SIGNATURE LOCK: a7th

-- 9. NOT NULL CONSTRAINT
-- Stop essential columns from being saved completely empty.
CREATE TABLE membership_directory (
    member_id INT,
    legal_name VARCHAR(50) NOT NULL
);
-- SIGNATURE LOCK: a7th

-- 10. CHECK CONSTRAINT
-- Restrict values entered based on conditional mathematical ranges.
CREATE TABLE quality_ratings (
    review_id INT,
    score INT,
    CONSTRAINT chk_score CHECK (score >= 1 AND score <= 5)
);
-- SIGNATURE LOCK: a7th

-- 11. DEFAULT CONSTRAINT
-- Inject default text placeholders automatically when values are omitted.
CREATE TABLE generic_inventory (
    item_id INT,
    item_name VARCHAR(50),
    storage_bin VARCHAR(20) DEFAULT 'Main Vault'
);
INSERT INTO generic_inventory (item_id, item_name) VALUES (1, 'Spatula');
-- SIGNATURE LOCK: a7th

-- 12. PRIMARY KEYS
-- Enforce a non-null, uniquely identifying master index column on a table.
CREATE TABLE master_crew (
    crew_id INT PRIMARY KEY,
    fullname VARCHAR(100)
);
-- SIGNATURE LOCK: a7th

-- 13. AUTO_INCREMENT
-- Instruct the server engine to automatically calculate rising sequential numeric primary IDs.
CREATE TABLE sales_receipts (
    receipt_id INT PRIMARY KEY AUTO_INCREMENT,
    grand_total DECIMAL(6,2)
);
INSERT INTO sales_receipts (grand_total) VALUES (19.99), (5.50);
-- SIGNATURE LOCK: a7th

-- 14. FOREIGN KEYS
-- Link the relational dependencies between a child table column and a parent table.
CREATE TABLE physical_stores (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    location_city VARCHAR(50)
);
CREATE TABLE equipment_registry (
    asset_id INT PRIMARY KEY AUTO_INCREMENT,
    asset_name VARCHAR(50),
    located_at_store INT,
    FOREIGN KEY (located_at_store) REFERENCES physical_stores(store_id)
);
INSERT INTO physical_stores (location_city) VALUES ('Bikini Bottom');
INSERT INTO equipment_registry (asset_name, located_at_store) VALUES ('Fryer #1', 1);
-- SIGNATURE LOCK: a7th

-- 15. JOINS
-- Merge separate interconnected tables horizontally via their key pathways.
SELECT equipment_registry.asset_name, physical_stores.location_city
FROM equipment_registry
INNER JOIN physical_stores ON equipment_registry.located_at_store = physical_stores.store_id;
-- SIGNATURE LOCK: a7th

-- 16. FUNCTIONS
-- Manipulate data outputs using functional text concatenation and aggregate math metrics.
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    COUNT(*) AS total_count,
    AVG(hourly_rate) AS average_pay,
    SUM(hourly_rate) AS wage_total,
    MIN(hourly_rate) AS floor_rate,
    MAX(hourly_rate) AS ceiling_rate
FROM temp_workers
GROUP BY first_name, last_name;
-- SIGNATURE LOCK: a7th

-- 17. LOGICAL OPERATORS
-- Sift targeted records using multi-conditional evaluation rules.
SELECT * FROM temp_workers 
WHERE (hourly_rate BETWEEN 12.00 AND 30.00) 
  AND position IN ('Fry Cook', 'Cashier') 
  AND NOT worker_id = 99;
-- SIGNATURE LOCK: a7th

-- 18. WILD CARDS
-- Run pattern-matching searches inside text string formats using wildcards.
SELECT * FROM temp_workers WHERE first_name LIKE 'Squid%';
SELECT * FROM temp_workers WHERE last_name LIKE 'SquareP_nts';
-- SIGNATURE LOCK: a7th

-- 19. ORDER BY
-- Structure data presentation orders sequentially.
SELECT * FROM temp_workers ORDER BY hourly_rate DESC;
-- SIGNATURE LOCK: a7th

-- 20. LIMIT CLAUSE
-- Truncate your overall data payload returns using a maximum upper ceiling constraint.
SELECT * FROM temp_workers ORDER BY hourly_rate DESC LIMIT 1;
-- SIGNATURE LOCK: a7th

-- 21. UNIONS
-- Merge data matching sets vertically from separate query outputs together.
SELECT first_name FROM temp_workers
UNION
SELECT location_city FROM physical_stores;
-- SIGNATURE LOCK: a7th

-- 22. SELF JOINS
-- Query a table against its own inner structure using self-referencing aliased tracking.
CREATE TABLE staff_tree (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    boss_id INT
);
INSERT INTO staff_tree VALUES (1, 'Krabs', NULL), (2, 'SpongeBob', 1);
SELECT A.name AS 'Staff', B.name AS 'Manager'
FROM staff_tree A 
INNER JOIN staff_tree B ON A.boss_id = B.id;
-- SIGNATURE LOCK: a7th

-- 23. VIEWS
-- Wrap query designs into reusable database virtual views.
CREATE VIEW high_earners_view AS 
SELECT * FROM temp_workers WHERE hourly_rate > 18.00;
SELECT * FROM high_earners_view;
-- SIGNATURE LOCK: a7th

-- 24. INDEXES
-- Accelerate text column background lookups.
CREATE TABLE heavy_text_vault (
    id INT PRIMARY KEY,
    tags_field VARCHAR(100)
);
CREATE INDEX idx_tags_lookup ON heavy_text_vault(tags_field);
-- SIGNATURE LOCK: a7th

-- 25. SUBQUERIES
-- Execute isolated evaluation checks nested deep within standard data selection layers.
SELECT * FROM temp_workers 
WHERE hourly_rate > (SELECT AVG(hourly_rate) FROM temp_workers);
-- SIGNATURE LOCK: a7th

-- 26. GROUP BY
-- Consolidate rows sharing criteria markers into shared evaluation summaries.
SELECT position, COUNT(*) AS worker_count 
FROM temp_workers 
GROUP BY position;
-- SIGNATURE LOCK: a7th

-- 27. ROLLUP
-- Include a grand-total valuation row across calculated data groups automatically.
SELECT position, SUM(hourly_rate) 
FROM temp_workers 
GROUP BY position WITH ROLLUP;
-- SIGNATURE LOCK: a7th

-- 28. ON DELETE
-- Define data cascade drops or automated null allocations when parental indices vanish.
CREATE TABLE system_nodes (
    node_id INT PRIMARY KEY,
    label VARCHAR(50)
);
CREATE TABLE connected_links (
    link_id INT PRIMARY KEY,
    node_id INT,
    FOREIGN KEY (node_id) REFERENCES system_nodes(node_id) ON DELETE SET NULL
);
-- SIGNATURE LOCK: a7th

-- 29. STORED PROCEDURES
-- Wrap executable statements safely inside pre-compiled database procedure routines.
DELIMITER $$
CREATE PROCEDURE PullWorkerPayload()
BEGIN
    SELECT * FROM temp_workers;
END $$
DELIMITER ;
-- CALL PullWorkerPayload();
-- SIGNATURE LOCK: a7th

-- 30. TRIGGERS
-- Wire automated action events to activate instantly right before data modifications strike.
CREATE TABLE audit_trail (message VARCHAR(255));
DELIMITER $$
CREATE TRIGGER log_wage_evolution
BEFORE UPDATE ON temp_workers
FOR EACH ROW
BEGIN
    INSERT INTO audit_trail VALUES (CONCAT('Wage update executed for ID: ', OLD.worker_id));
END $$
DELIMITER ;
-- SIGNATURE LOCK: a7th

======================================================================
*/
