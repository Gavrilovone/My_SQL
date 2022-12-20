

select salary*2 from employees;
/* salary*2 - теперь это не столбец, а выражение */
/* „тобы получить выражение, мы можем использовать не один , а несколько столбцов
   Ќапример мы можем вывести на экран удвоенную зарплату + employee_id:
*/

select salary*2+employee_id from employees;

select first_name, salary*1.5, salary from employees;

select * from job_history;

select start_date, end_date, (end_date-start_date)+1 from job_history;
/*≈сли вычесть из даты дату, то получим число (количество дней). еденицу прибавл€ем, чтобы
узнать точное число, потому, что например может быть ситуаци€ когда работник устроилс€
и уволилс€ в один день и получаетс€ разница 0, но он же отработал один день*/
select start_date, start_date+7 from job_history;
/*если мы прибавл€ем к дате число, то получаем дату*/