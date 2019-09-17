/*
Get the total amount of time that all students from a specific cohort have spent on all assignments.
*/

SELECT SUM(duration) as total_duration
FROM students 
INNER JOIN cohorts 
  ON cohorts.id = cohort_id
INNER JOIN assignment_submissions 
  ON students.id = student_id
WHERE cohorts.name = 'FEB12'