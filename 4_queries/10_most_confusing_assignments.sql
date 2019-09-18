/*
List each assignment with the total number of assistance requests with it.
- Select the assignment's id, day, chapter, name and the total assistances.
- Order by total assistances in order of most to least.
*/


/* Group by all non-aggregated 'SELECT' fields */
SELECT assignments.id AS id, name, day, chapter, COUNT(assistance_requests.id) AS total_requests
FROM assistance_requests
  JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.name, assignments.id, day, chapter
ORDER BY total_requests DESC;

/* Group by id (which is unique) */
-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;