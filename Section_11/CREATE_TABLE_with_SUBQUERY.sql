/*CREATE TABLE with SUBQUERY*/
CREATE TABLE new_emps AS (select employee_id, first_name, last_name,
salary, department_id from employees);
/*можно без скобок писать любой subquery, но они придают читабельность
Таким  образом мы создали таблицу которая содержит те столбцы которые мы указали
в subquery, и заполнили ее данными из таблицы employee
*/

select * from new_emps;

CREATE TABLE new_dep AS (select department_name, MAX(salary) max_salary, 
MIN(salary) min_salary from employees e JOIN departments d
ON (e.department_id = d.department_id) group by department_name);

/*Если нам нужна например структура таблицы regions, но чтобы строки не заполнялись*/
CREATE TABLE regions2 AS(select * from regions where 5=6);
select * from regions2;
/*Так как 5=6 всегда false, по-этому select ничего не вернет, таблица создасться
но будет пустая
*/