/* ===================================================================
CONCEPT 30: TRIGGERS
===================================================================
*/
USE bikini_bottom_db;

-- 1. Create a separate tracking sheet to capture live database mutations.
CREATE TABLE pay_audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    log_message VARCHAR(255)
);

-- 2. Build a trigger that fires automatically right before an update takes place.
DELIMITER $$

CREATE TRIGGER safety_pay_lock
BEFORE UPDATE ON temp_employees
FOR EACH ROW
BEGIN
    INSERT INTO pay_audit_log (log_message) 
    VALUES (CONCAT('Employee ID ', OLD.employee_id, ' shifted pay rates.'));
END $$

DELIMITER ;

-- 3. Execute a change to verify the trigger logs the mutation automatically.
UPDATE temp_employees SET hourly_pay = 18.00 WHERE employee_id = 1;
SELECT * FROM pay_audit_log;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
