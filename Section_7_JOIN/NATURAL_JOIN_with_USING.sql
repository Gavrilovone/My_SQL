/*NATURAL JOIN with USING: в отличие от натурального, здесь можно объеденять
по одному столбцу

*/

select first_name, last_name, salary, department_name,  department_name, 
department_id, d.manager_id, e.manager_id
from employees e JOIN departments d  USING(department_id);
/*колонки которые есть в обеих таблицах нужно писать полное имя, так как
будет ошибка(неоднозначность), а department_id мы не можем записать через
полое имя, потому что он вляется общим для двух столбцов*/
