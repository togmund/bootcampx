
-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT a.id, a.name, a.day, a.chapter, count(a_s.*) AS total_requests
FROM assignments a
  JOIN assignment_submissions a_s ON a.id = a_s.assignment_id
GROUP BY a.id, a.name, a.day, a.chapter
ORDER BY total_requests DESC;