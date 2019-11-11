SELECT COUNT(*) AS students_in_cohort
FROM students
  WHERE cohort_id IN (1,2,3);