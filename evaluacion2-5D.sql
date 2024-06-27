1-SELECT j.job_title AS trabajo,
  COUNT(e.employee_id) AS cant_empleados,
  SUM(e.salary) AS total_salario
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY  cant_empleados DESC;

2-SELECT e.first_name,e.last_name,
  j.job_title,d.department_name
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id

3-UPDATE employees
SET phone_number = '303.404.505'
WHERE phone_number IS NULL;
SELECT e.employee_id,e.first_name,e.last_name,
  e.email,e.phone_number,e.department_id
FROM employees e
WHERE e.phone_number = '303.404.505';
  
4-UPDATE employees
SET salary = salary * 1.35
WHERE salary < 8000
AND job_id IN (
SELECT job_id
FROM jobs
WHERE job_title IN ('Programmer', 'Accountant')
  );
  
  
5-INSERT INTO locations (street_address, postal_code, city, state_province, country_id)
VALUES ('2004 Charade Rd', '98109', 'Seattle', 'WA', (SELECT country_id FROM countries WHERE country_name = 'United States of America'));
INSERT INTO departments (department_name, location_id)
VALUES ('consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));
INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('consultant', 3000, 8000);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES ('Raul', 'Lopez', 'rlopez@gmail.com', '1.231.231.122', '2024-06-27', (SELECT job_id FROM jobs WHERE job_title = 'consultant'), 5000, 100, (SELECT department_id FROM departments WHERE department_name = 'consultants')),
('Andres', 'Gonzalez', 'agonzalez@gmail.com', '1.231.231.122', '2024-06-27', (SELECT job_id FROM jobs WHERE job_title = 'consultant'), 5000, 100, (SELECT department_id FROM departments WHERE department_name = 'consultants')),
('Laura', 'Fernandez', 'lfernandez@gmail.com', '1.231.231.122', '2024-06-27', (SELECT job_id FROM jobs WHERE job_title = 'consultant'), 5000, 100, (SELECT department_id FROM departments WHERE department_name = 'consultants'));

6-SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');
DELETE FROM employees WHERE department_id IN (
SELECT department_id FROM departments WHERE location_id IN (
SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada')));
DELETE FROM departments WHERE location_id IN (
SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada'));
DELETE FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');
DELETE FROM countries WHERE country_name = 'Canada';

7-DELETE FROM jobs
WHERE NOT EXISTS (
    SELECT 1
    FROM employees
    WHERE employees.job_id = jobs.job_id
);
