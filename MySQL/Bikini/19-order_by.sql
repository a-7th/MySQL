/* ===================================================================
CONCEPT 19: ORDER BY
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a scores list to rank.
CREATE TABLE jellyfish_contest (
    player_name VARCHAR(50),
    jellyfish_caught INT
);

INSERT INTO jellyfish_contest VALUES 
('Patrick', 2), ('SpongeBob', 45), ('Sandy', 38);

-- 2. Sort the data from the highest score to the lowest score (DESCending).
SELECT * FROM jellyfish_contest
ORDER BY jellyfish_caught DESC;
