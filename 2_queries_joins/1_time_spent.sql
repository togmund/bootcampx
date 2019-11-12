SELECT sum(duration) AS minutes_spent
FROM assignment_submissions sub
JOIN students stu ON sub.student_id = stu.id
  WHERE stu.name = 'Ibrahim Schimmel';