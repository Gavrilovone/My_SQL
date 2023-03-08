/*LEFT OUTER JOIN*/

SELECT first_name, last_name, salary, department_name
FROM employees e  JOIN departments d 
ON(e.department_id = d.department_id);

SELECT first_name, last_name, salary, department_name
FROM employees e LEFT OUTER JOIN departments d 
ON(e.department_id = d.department_id);
/*здесь в output добавилась еще одна строка из левой таблицы(в данном случае 
employees) которая не удовлетворяет условию, тоесть у нее нет department_id, 
соответственно department_name = null
*/