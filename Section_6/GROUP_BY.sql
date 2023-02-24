/*GROUP BY*/
select * from employees;
select department_id, COUNT(*) from employees GROUP BY department_id 
ORDER BY 1,2; /*в output выйдет: все depatment_id  и количество строк для 
каждого департамента, тоеть происходит группировка по department_id. Нельзя
при этом в селект вывести другие колонки например salary, так как группировка 
идет по department_id
*/

select department_id, job_id, COUNT(*) from employees GROUP BY 
department_id, job_id ORDER BY 1, 2;