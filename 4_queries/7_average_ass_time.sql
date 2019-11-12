-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.

SELECT
  AVG(a_r.started_at - a_r.created_at) AS average_ass_time
FROM assistance_requests a_r