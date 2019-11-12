-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT AVG(total_ass_time) AS avg_total_ass_time
FROM
  (SELECT
    c.name AS cohort_name,
    SUM(a_r.completed_at - a_r.started_at) AS total_ass_time
  FROM assistance_requests a_r
    JOIN students s ON a_r.student_id = s.id
    JOIN cohorts c ON s.cohort_id = c.id
  GROUP BY c.name) AS cohort_times;