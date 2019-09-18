/*
Get each day with the total number of assignments and the total duration of the assignments.
- Select the day, number of assignments, and the total duration of assignments.
- Order the results by the day.
*/

SELECT day, COUNT(id) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;