/*JOIN example*/
SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM countries;
SELECT * FROM locations NATURAL JOIN countries NATURAL JOIN regions;
/*Сначла происходит обединение таблиц regions и locations, а потом полученный
результат объединяется с regions
*/
SELECT * FROM locations JOIN countries USING(country_id)
JOIN regions USING (region_id);/*тоже самое, только мы тут явно указываем
что обединение идет по country_id и по regions_id потом
*/

/*Вывести информацию о имени работника, его старых job_id, 
названии департамента и времени работы там*/
SELECT first_name, last_name, jh.job_id, start_date, end_date, department_name
FROM employees e JOIN job_history jh ON(e.employee_id = jh.employee_id)
JOIN departments d ON(jh.department_id = d.department_id)