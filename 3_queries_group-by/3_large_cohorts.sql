SELECT c.name AS cohort_name, COUNT(a_s.*) AS submission_count
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions a_s ON s.id = a_s.student_id
GROUP BY c.name
ORDER BY submission_count DESC;