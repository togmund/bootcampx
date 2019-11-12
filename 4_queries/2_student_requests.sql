-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

SELECT s.name, count(a_r.*) AS assistances_queried
FROM students s
  JOIN assistance_requests a_r ON s.id = a_r.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;