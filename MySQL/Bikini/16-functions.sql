/* ===================================================================
CONCEPT 16: FUNCTIONS (CONCAT, COUNT, AVG, SUM, MIN, MAX)
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a dummy table containing raw data for math operations.
CREATE TABLE finance_ledger (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    item_sold VARCHAR(50),
    revenue DECIMAL(6,2)
);

INSERT INTO finance_ledger (item_sold, revenue) VALUES 
('Patty', 10.00), ('Shake', 5.00), ('Fries', 4.50);

-- 2. Use string function CONCAT and common summary aggregate functions.
SELECT 
    CONCAT('Total Items Sold: ', COUNT(item_sold)) AS total_items,
    SUM(revenue) AS grand_total,
    AVG(revenue) AS average_sale,
    MIN(revenue) AS cheapest_item,
    MAX(revenue) AS expensive_item
FROM finance_ledger;
