/*ORDER BY - помогает нам упорядочивать или можно сказать сортировать наш вывод
  Если его не указывать, нет гарантий, что будет вводится в одном и том же виде
*/

select first_name, salary from employees order by salary;
/*Выводится список отсортрованный по зарплате(по умолчанию)по возрастанию*/

select first_name, salary, hire_date from employees 
where job_id = 'IT_PROG'order by hire_date asc;
/*asc - ключевое слово, означающее сортировку по возрастанию, но из-за того, что 
  по умолчанию происходит такая сортировка, его обычно не пишут
*/
select first_name, salary, hire_date from employees 
where job_id = 'IT_PROG'order by first_name desc;
/*desc - ключевое слово, означающее сортировку по убыванию
*/

/*Также можно делеть order by по выражению, выше мы делали это по колонке*/
select last_name, salary, hire_date, hire_date+salary*2 expr
from employees
where employee_id>120
order by expr; /*expr - это alias, чтобы не писать длинное выражение*/

select * from employees order by commission_pct asc nulls first;
select * from employees order by commission_pct desc nulls last;
/*если мы хотим, чтобы значения с nulls выводились первыми пишем nulls first
  так как без этого они будут выводится в конце, а если хотим, чтобы nulls
  выводились последними, пишем nulls last, так-как при сортировке по убыванию
  null будут вывоится раньше
  
  /*Когда мы пишем order by мы, мы можем не писать имя столбца, а можем
    указать порядковый номер его в нашем селект листе(в случае с salary это 2)
  */
  select first_name, salary from employees order by 2;
  /*селект лист это first_name, salary а не порядок столбцов в таблице*/
  
  select job_id, employee_id, first_name, last_name, salary, hire_date
  from employees
  order by job_id desc, last_name, 4 desc;
  /*сортировка по нескольким  столбцам*/
