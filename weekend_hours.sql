/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/
SELECT emp_id, SUM(HOUR(TIMEDIFF(end_time, start_time))) AS weekend_hours
FROM (
  SELECT emp_id,
         DATE(timestamp) AS log_date,
         MIN(timestamp) AS start_time,
         MAX(timestamp) AS end_time
  FROM attendance
  GROUP BY emp_id, log_date
) AS subquery
WHERE DAYOFWEEK(start_time) = 7 OR DAYOFWEEK(start_time) = 1
GROUP BY emp_id
ORDER BY weekend_hours DESC;
