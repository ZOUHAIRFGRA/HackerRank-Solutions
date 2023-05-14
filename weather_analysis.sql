/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/
SELECT MONTH(record_date) AS month,
       MAX(CASE WHEN data_type = 'max' THEN data_value END) AS monthly_maximum,
       MIN(CASE WHEN data_type = 'min' THEN data_value END) AS monthly_minimum,
       ROUND(AVG(CASE WHEN data_type = 'avg' THEN data_value END)) AS monthly_average
FROM temperature_records
WHERE record_date >= '2020-07-01' AND record_date <= '2020-12-31'
GROUP BY MONTH(record_date)
ORDER BY MONTH(record_date);
