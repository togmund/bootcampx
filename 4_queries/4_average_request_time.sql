-- Get the average time of an assistance request.

-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)

SELECT AVG(a_r.completed_at - a_r.started_at) AS average_request_duration
FROM assistance_requests a_r