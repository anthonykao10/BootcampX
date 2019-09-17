/*
Get all cohorts with 18 or more students.
*/

SELECT cohorts.name AS cohort_name, COUNT(*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY COUNT(*);