/* ===================================================================
CONCEPT 18: WILD CARDS (LIKE with %, _)
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a temporary table of customers for lookup patterns.
CREATE TABLE phone_directory (
    contact_name VARCHAR(50),
    phone VARCHAR(20)
);

INSERT INTO phone_directory VALUES 
('Sandy Cheeks', '555-1234'), ('Squidward T.', '555-5678'), ('Squilliam F.', '555-9999');

-- 2. % Wildcard: Finds anything starting with 'Squid' followed by any characters.
SELECT * FROM phone_directory WHERE contact_name LIKE 'Squid%';

-- 3. _ Wildcard: Finds names where specific positions match (exactly 1 character for the underscore).
SELECT * FROM phone_directory WHERE contact_name LIKE 'Sand_ %';
