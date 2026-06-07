/* ===================================================================
CONCEPT 25: SUBQUERIES
===================================================================
*/
USE bikini_bottom_db;

-- 1. Find all employees who earn more than the overall average company pay.
--    The nested inner SELECT statement calculates the value the outer query evaluates against.
SELECT first_name, hourly_pay 
FROM temp_employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM temp_employees);

/* -- SIGNATURE LOCK: a7th -- DO NOT REMOVE OR SCRIPT BREAKS */
