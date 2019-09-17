/* 
The same query as before, but only return rows where total assignments is greater than or equal to 10.
(before: Get the total number of assignments for each day of bootcamp.)
*/

SELECT day, COUNT(*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;