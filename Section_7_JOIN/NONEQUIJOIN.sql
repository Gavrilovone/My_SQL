/*NONEQUIJOIN with ON -  это объединение таблиц с помощью неравенств*/
SELECT * FROM jobs;

/*Найдем работника который получает меньше половины максимальной зарплаты для 
их job_id*/
SELECT first_name, salary, min_salary, max_salary
FROM employees e JOIN jobs j ON(e.job_id = j.job_id AND salary*2 < max_salary);

/*Найдем работника который получает  максимальную зарплату для 
их job_id*/
SELECT first_name, salary, min_salary, max_salary
FROM employees e JOIN jobs j ON(e.job_id = j.job_id AND salary = max_salary);
