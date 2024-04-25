1-select first_name, last_name,salary from employees where salary >6000


2-select first_name, last_name,department_name, l.city,l.state_province from employees t
join departments d on t.department_id = d.department_id
join locations l on d.location_id = l.location_id

3-SELECT e.first_name as empleados, m.first_name as jefes from employees e
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY m.manager_id

4-