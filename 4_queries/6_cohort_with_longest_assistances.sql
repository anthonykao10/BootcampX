/*
Get the cohort with the longest average duration of assistance requests.
*/

-- SELECT cohort_name, MAX(average_assistance_time) AS average_assistance_time
-- FROM (
--   SELECT cohorts.name AS cohort_name, AVG(completed_at - started_at) AS average_assistance_time
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts ON cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY average_assistance_time
-- ) AS average_duration
-- GROUP BY cohort_name

SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;