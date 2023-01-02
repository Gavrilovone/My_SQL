/*ѕриоритет AND больше чем у OR*/
select * from employees;
select * from employees where first_name like '__n%' AND commission_pct is null;
/*2 underscore подр€д "__" специальый символ, который означает один знак
тоесть "n" треть€, нужно найти все имена у которых 3 буква "n"*/

select * from employees where first_name like 'A%' AND job_id = 'SA_REP';
/*вывести тех у кого им€ начинаетс€ с "A"*/

select * from employees 
where first_name like '__n%' AND commission_pct is null
OR
first_name like 'A%' AND job_id = 'SA_REP';
/*—начала работают 2 AND и только потом OR*/
