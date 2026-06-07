/* ===================================================================
CONCEPT 24: INDEXES
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a large text table where searches might run slowly over time.
CREATE TABLE archive_files (
    file_id INT PRIMARY KEY AUTO_INCREMENT,
    file_title VARCHAR(100),
    file_contents TEXT
);

-- 2. Create an INDEX on the title column to drastically speed up lookup queries.
CREATE INDEX idx_file_title ON archive_files(file_title);

-- 3. Show all indexes attached to this table to verify.
SHOW INDEXES FROM archive_files;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
