## 1. Weather Analysis

There is a table with daily weather data over the last 6 months of 2020, including the maximum, minimum, and average temperatures.

Write a query that gives month, monthly maximum, monthly minimum, monthly average temperatures for the six months.

Note: Round the average to the nearest integer.

### Schema

There is 1 table: `temperature_records`.

| Name         | Type        | Description           |
| -------------| ------------| --------------------- |
| record_date  | varchar(10) | date of the record     |
| data_type    | varchar(3)  | type key ('min', 'max', or 'avg') |
| data_value   | int         | value                  |

### Sample Data Tables

`temperature_records`

| record_date | data_type | data_value |
| ----------- | --------- | ---------- |
| 2020-07-01  | max       | 92         |
| 2020-07-01  | min       | 71         |
| 2020-07-01  | avg       | 74         |
| 2020-07-02  | max       | 90         |
| 2020-07-02  | min       | 67         |
| 2020-07-02  | avg       | 77         |
| ...         | ...       | ...        |

### OUTPUT

| month | max | min | avg |
| ----- | --- | --- | --- |
| 7     | 100 | 67  | 79  |

## 2. Weekend Hours Worked

The times that employees log in and out are recorded over the course of a month. For each employee, determine the number of hours worked during the weekends. For simplicity, hours worked in a day, hours are truncated to their integer part.

For example, there are 10 hours between '2000-01-01 00:45:00' and '2000-01-01 10:45:00'. There are 9 hours between '2000-01-01 00:46:00' and '2000-01-01 10:45:00'.

Return a list of employee ids and weekend hours worked, descending by hours worked.

### Schema

You are provided 1 table: `attendance`.

| Name       | Type        | Description                           |
| -----------| ------------| ------------------------------------- |
| timestamp  | varchar(20) | date and time at which the employee logged in or logged out |
| emp_id     | int         | unique id of the employee             |

### Sample Data Tables

`attendance`

| timestamp            | emp_id |
| -------------------- | ------ |
| 2021-07-01 08:08:00  | 747    |
| 2021-07-01 17:19:00  | 747    |
| 2021-07-02 08:15:00  | 747    |
| 2021-07-02 16:56:00  | 747    |
| ...                  | ...    |

### OUTPUT

| emp_id | work_hours |
| ------ | ---------- |
| 747    | 67         |

Explanation:

Weekends  	Hours
(Saturday and Sunday)
2021-07-03 08:36:00
2021-07-03 17:40:00 	9
2021-07-04 08:37:00
2021-07-04 17:38:00 	9

2021-07-10 08:33:00
2021-07-10 17:54:00 	9
2021-07-11 08:13:00
2021-07-11 16:31:00 	8

2021-07-17 08:14:00
2021-07-17 17:28:00 	9
2021-07-18 08:01:00
2021-07-18 16:27:00 	8

2021-07-24 08:24:00
2021-07-24 16:32:00 	8
2021-07-25 08:52:00
2021-07-25 16:10:00 	7

