/* ===================================================================
CONCEPT 17: LOGICAL OPERATORS (AND, OR, NOT, BETWEEN, IN)
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a catalog of items to filter through.
CREATE TABLE storage_room (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(50),
    quantity INT,
    aisle INT
);

INSERT INTO storage_room (item_name, quantity, aisle) VALUES
('Spatulas', 15, 1), ('Napkins', 100, 2), ('Salt Shakers', 40, 1), ('Pickles', 8, 3);

-- 2. Example using AND, BETWEEN, and IN in a structured filter.
SELECT * FROM storage_room 
WHERE (quantity BETWEEN 10 AND 50) 
  AND aisle IN (1, 3) 
  AND NOT item_name = 'Pickles';
