select * from employees 
where first_name LIKE 'D%' AND salary > 10000;

select * from employees 
where first_name LIKE 'D%' OR salary > 10000;

select * from employees
where   NOT job_id = 'SA_MAN';

select * from employees
where last_name NOT LIKE 'K%';


select * from employees
where job_id NOT in('ST_MAN', 'ST_CLERK');

select * from employees
where commission_pct is NOT null AND last_name NOT like '%n';


