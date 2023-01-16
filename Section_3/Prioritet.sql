/*Приоритет AND больше чем у OR*/
select * from employees;
select * from employees where first_name like '__n%' AND commission_pct is null;
/*2 underscore подряд "__" специальый символ, который означает один знак
тоесть "n" третья, нужно найти все имена у которых 3 буква "n"*/

select * from employees where first_name like 'A%' AND job_id = 'SA_REP';
/*вывести тех у кого имя начинается с "A"*/

select * from employees 
where first_name like '__n%' AND commission_pct is null
OR
first_name like 'A%' AND job_id = 'SA_REP';
/*Сначала работают 2 AND и только потом OR*/
