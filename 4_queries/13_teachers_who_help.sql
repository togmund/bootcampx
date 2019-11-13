
-- Get the name of all teachers that performed an assistance request during a cohort.

-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.

-- Perform the same query as before, but include the number of assistances as well.

SELECT
  t.name AS teach,
  c.name AS class,
  count(a_r.*) AS helps
FROM assistance_requests a_r
  JOIN students s ON a_r.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
  JOIN teachers t ON a_r.teacher_id = t.id
WHERE c.name = 'JUL02'
GROUP BY class, teach
ORDER BY helps DESC;