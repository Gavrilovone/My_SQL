/*JOIN
— помощью JOIN мы можем извлекать информацию сразу из нескльких таблиц
*/

select * FROM employees t1; /*t1 - это алиас дл€ всей таблицы employees
это актуально при работе с join
*/
select employees.first_name FROM employees;
select t1.first_name FROM employees t1;
/*это одно и тоже*/

select * FROM departments; 

/*мы не сможем в какой department_name будет у сотрудника только лишь  из 
employees, так как там нет такой колонки, а есть только department_id. ѕомочь
в этом может join
*/