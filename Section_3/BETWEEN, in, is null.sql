select first_name, last_name from employees
where salary BETWEEN 4000 and 10000;

/*Можно использовать и колонки*/
select first_name, last_name from employees
where salary BETWEEN employee_id+100 and 10000;

select * from job_history WHERE start_date BETWEEN '01.01.2004' and '31.12.2006';
select * from job_history WHERE start_date>= '01.01.2004' and start_date<='31.12.2006';
/*Результат будет такой же*/
select * from departments WHERE location_id IN (1700, 2400, 1500);
select * from departments WHERE location_id= 1700 OR location_id=2400 OR location_id=1500 ;
/*Результат будет такой же*/

select * from job_history WHERE job_id IN ('IT_PROG', 'ST_CLERK');

/*Ни BETWEEN, ни IN не добавляют какой-то новой функциональности, просто с
  ними более локанично и элегантно
  
  /*IS NULL -это оператор который проверяет на null*/
  
  select * from employees where commission_pct IS NULL;
  select * from employees where commission_pct IS NOT NULL;
*/