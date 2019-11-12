SELECT day, count(day)
FROM assignments
GROUP BY day
HAVING count(day) >= 10
ORDER BY day;