-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.


SELECT
  c.name AS cohort_name,
  AVG(a_r.completed_at - a_r.started_at) AS long_ass_time
FROM assistance_requests a_r
  JOIN students s ON a_r.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY c.name
ORDER BY long_ass_time DESC
LIMIT 1;