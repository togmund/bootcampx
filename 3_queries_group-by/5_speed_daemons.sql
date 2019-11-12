SELECT
  s.name,
  AVG(a_s.duration) AS avg_time_spent,
  AVG(a.duration) AS expected_time
FROM students s
JOIN assignment_submissions a_s
  ON s.id = a_s.student_id
JOIN assignments a
  ON a_s.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(a_s.duration) < AVG(a.duration)
ORDER BY avg_time_spent ASC;