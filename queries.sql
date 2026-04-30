USE uni_tasks;
-- 1
SELECT id, YEAR(date) as year, MONTH(date) as month, DAY(date) as day, date FROM orders;

-- 2
SELECT id, date, DATE_ADD(date, INTERVAL 1 DAY) AS date_plus FROM orders; 

-- 3
SELECT id, date, UNIX_TIMESTAMP(date) AS date_time FROM orders;

-- 4
SELECT COUNT(*) FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00'

-- 5
SELECT id, date, JSON_OBJECT('id', id, 'date', date) AS json_row FROM orders;