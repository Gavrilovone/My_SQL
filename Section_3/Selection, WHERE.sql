/*Selection - выбор строк из таблиц*/

select * from employees;

select first_name, last_name, salary from employees where salary = 17000;

select first_name, last_name, salary from employees where last_name = 'King';

select email from employees where hire_date = '21.09.05';

/*нельзя например написать first_name = salary , так как сравниваемые выражения
доджны быть одного типа */

select * from employees where employee_id = manager_id+1000/10+1;

select * from job_history where job_id = 'ST_CLERK'; /*значение имеет и регистр, должно быть точное совпадение*/

select * from employees
where 'Dr ' ||first_name||' '||last_name = 'Dr Steven King';

select * from job_history where start_date < '01.01.2005' ;
