-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT
  t.name AS teacher_name,
  s.name AS student_name,
  a.name AS assignment_name,
  (a_r.completed_at - a_r.started_at) AS request_duration
FROM assistance_requests a_r
JOIN students s ON a_r.student_id = s.id
JOIN teachers t ON a_r.student_id = t.id
JOIN assignments a ON a_r.assignment_id = a.id;