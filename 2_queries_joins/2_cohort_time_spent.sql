SELECT SUM(duration) as minutes_spent
FROM assignment_submissions sub
JOIN students stu ON sub.student_id = stu.id
JOIN cohorts coh ON stu.cohort_id = coh.id
  WHERE coh.name = 'FEB12';