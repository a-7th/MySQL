/* ===================================================================
CONCEPT 20: LIMIT CLAUSE
===================================================================
*/
USE bikini_bottom_db;

-- 1. Using the jellyfish_contest records from the previous file.
--    Find the top score by sorting descending and limiting to the top row.
SELECT * FROM jellyfish_contest
ORDER BY jellyfish_caught DESC
LIMIT 1;

-- 2. Skip the first row and show the next one (Offsetting using LIMIT).
SELECT * FROM jellyfish_contest
ORDER BY jellyfish_caught DESC
LIMIT 1 OFFSET 1;
