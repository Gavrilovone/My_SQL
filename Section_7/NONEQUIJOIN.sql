/*NONEQUIJOIN with ON -  ��� ����������� ������ � ������� ����������*/
SELECT * FROM jobs;

/*������ ��������� ������� �������� ������ �������� ������������ �������� ��� 
�� job_id*/
SELECT first_name, salary, min_salary, max_salary
FROM employees e JOIN jobs j ON(e.job_id = j.job_id AND salary*2 < max_salary);

/*������ ��������� ������� ��������  ������������ �������� ��� 
�� job_id*/
SELECT first_name, salary, min_salary, max_salary
FROM employees e JOIN jobs j ON(e.job_id = j.job_id AND salary = max_salary);
