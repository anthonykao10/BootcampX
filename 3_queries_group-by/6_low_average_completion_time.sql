/*
Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.
*/

SELECT students.name, 
  AVG(assignment_submissions.duration) AS average_assignment_duration, 
  AVG(assignments.duration) AS average_estimated_duration 
FROM assignment_submissions
  JOIN students ON students.id = student_id
  JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;
