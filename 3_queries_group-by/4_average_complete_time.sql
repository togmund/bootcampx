SELECT s.name, AVG(a_s.duration) AS avg_time_spent
FROM students s
JOIN assignment_submissions a_s
  ON s.id = a_s.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY avg_time_spent DESC;