/*SUBQUERY_INTRO -  подзапрос*/

/*Ќапример нужно найти работников чь€ зарплата больше средней*/
SELECT first_name, last_name, salary
FROM employees WHERE salary > (select AVG(salary) from employees);
/*просто salary > AVG(salary) написать нельз€, так как нужна группировка
“аким образом можно решать одни и те же задачи с помощью JOIN или SUBQUERY
вложенность SUBQUERY может быть очень много. SUBQUERY срабатывает перед тем как
должен сработать основной селект
*/

/*Ќайти минимальную зарплату дл€ работников и найти длинну с самого длинного 
имени*/
SELECT (SELECT MIN(min_salary) FROM jobs) min_zp,
(SELECT MAX(LENGTH(first_name)) FROM employees) samoe_dlinnoe_Imya FROM dual;

/*Ќайдем им€ и фамилию всех менеджеров*/
SELECT first_name, last_name FROM employees WHERE
employee_id IN (SELECT manager_id FROM employees);
/*выводим им€ и фамилию работников где employee_id есть в списке
manager_id FROM employees, тоесть если он есть в списке, значит он менеджер
*/

/*¬ывести название департамента и минимальную и максимальную зп по всем 
департаментам*/
select * from departments;
select * from jobs;
select * from employees ;

SELECT department_name, MIN(salary), MAX(salary) FROM 
(SELECT salary, department_name FROM employees e JOIN departments d
ON (e.department_id = d.department_id))
GROUP BY department_name;
