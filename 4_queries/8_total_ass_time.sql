-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

SELECT
  c.name AS cohort_name,
  SUM(a_r.completed_at - a_r.started_at) AS total_ass_time
FROM assistance_requests a_r
  JOIN students s ON a_r.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY c.name
ORDER BY total_ass_time;