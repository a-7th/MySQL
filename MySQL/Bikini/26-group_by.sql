/* ===================================================================
CONCEPT 26: GROUP BY
===================================================================
*/
USE bikini_bottom_db;

-- 1. Group rows with shared attributes into unique summary blocks.
SELECT job_title, COUNT(*) AS 'Total Workers', AVG(hourly_pay) AS 'Average Pay'
FROM temp_employees
GROUP BY job_title;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
