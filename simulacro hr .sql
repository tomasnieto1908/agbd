1-SELECT department_name FROM departments
 ORDER BY department_name asc
2-SELECT DISTINCT salary FROM employees
 ORDER By salary desc
 3-SELECT DISTINCT job_title,min_salary , max_salary  FROM jobs
WHERE job_title like "%manager"
order by min_salary , max_salary DESC
4-SELECT  country_name as pais,region_name as region FROM countries C
JOIN regions r on c.region_id = r.region_id
ORDER by region_name asc
5-SELECT first_name as nombre,last_name as apellido, salary as salary,department_name as departamento FROM departments p
JOIN employees e on p.department_id = e.department_id
WHERE salary  BETWEEN 9000 and 17000
order by salary desc