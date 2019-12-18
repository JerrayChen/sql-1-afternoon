-- 1.
SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary';

-- 2.
SELECT SUBSTRING(MAX(birth_date)::VARCHAR FROM 1 FOR 10) birth_date
FROM employee ;

-- 3.
SELECT SUBSTRING(MIN(birth_date)::VARCHAR FROM 1 FOR 10) birth_date
FROM employee ;

-- 4.
SELECT staff.first_name, staff.last_name 
FROM employee staff
JOIN employee manager
ON staff.reports_to = manager.employee_id
WHERE manager.first_name = 'Nancy'
AND manager.last_name = 'Edwards';

-- 5.
SELECT COUNT(*) people_count
FROM employee 
WHERE city = 'Lethbridge';