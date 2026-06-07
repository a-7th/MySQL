/* ===================================================================
CONCEPT 29: STORED PROCEDURES
===================================================================
*/
USE bikini_bottom_db;

-- 1. Set a clean command statement delimiter pattern to allow multiple interior semi-colons.
DELIMITER $$

CREATE PROCEDURE GetHighPaidStaff()
BEGIN
    SELECT * FROM temp_employees WHERE hourly_pay > 15.00;
END $$

DELIMITER ;

-- 2. Execute and run the wrapped query code block sequence.
CALL GetHighPaidStaff();

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
