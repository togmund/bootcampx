SELECT c.name AS cohort_name, COUNT(s.*) AS student_count
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
GROUP BY c.name
HAVING COUNT(s.*) >= 18
ORDER BY student_count ASC;