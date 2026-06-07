/* ===================================================================
CONCEPT 13: AUTO_INCREMENT
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a table where the IDs automatically calculate and assign themselves.
CREATE TABLE order_tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT, -- Counts up from 1 automatically
    food_item VARCHAR(50)
);

-- 2. Insert data without typing out any IDs.
INSERT INTO order_tickets (food_item) VALUES ('Krabby Patty');
INSERT INTO order_tickets (food_item) VALUES ('Kelp Shake');
INSERT INTO order_tickets (food_item) VALUES ('Coral Fries');

-- 3. Check the results to see your perfectly ordered ticket_ids!
SELECT * FROM order_tickets;
