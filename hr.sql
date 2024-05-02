1-select first_name, last_name,salary from employees where salary >6000


2-select first_name, last_name,department_name, l.city,l.state_province from employees t
join departments d on t.department_id = d.department_id
join locations l on d.location_id = l.location_id

3-SELECT m.first_name as jefe, e.first_name as empleado from employees e
JOIN employees m ON e.manager_id = m.employee_id
ORDER BY jefe

4-SELECT m.first_name as jefe, count(e.first_name) as empleado from employees e
JOIN employees m ON e.manager_id = m.employee_id group by jefe
ORDER BY jefe