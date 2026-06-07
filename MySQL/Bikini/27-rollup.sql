/* ===================================================================
CONCEPT 27: ROLLUP
===================================================================
*/
USE bikini_bottom_db;

-- 1. Add an extra grand-summary total row to our GROUP BY using WITH ROLLUP.
SELECT job_title, SUM(hourly_pay) AS 'Total Cost'
FROM temp_employees
GROUP BY job_title WITH ROLLUP;

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
