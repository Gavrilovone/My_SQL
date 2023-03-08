/*SUBQUERY_INTRO -  ���������*/

/*�������� ����� ����� ���������� ��� �������� ������ �������*/
SELECT first_name, last_name, salary
FROM employees WHERE salary > (select AVG(salary) from employees);
/*������ salary > AVG(salary) �������� ������, ��� ��� ����� �����������
����� ������� ����� ������ ���� � �� �� ������ � ������� JOIN ��� SUBQUERY
����������� SUBQUERY ����� ���� ����� �����. SUBQUERY ����������� ����� ��� ���
������ ��������� �������� ������
*/

/*����� ����������� �������� ��� ���������� � ����� ������ � ������ �������� 
�����*/
SELECT (SELECT MIN(min_salary) FROM jobs) min_zp,
(SELECT MAX(LENGTH(first_name)) FROM employees) samoe_dlinnoe_Imya FROM dual;

/*������ ��� � ������� ���� ����������*/
SELECT first_name, last_name FROM employees WHERE
employee_id IN (SELECT manager_id FROM employees);
/*������� ��� � ������� ���������� ��� employee_id ���� � ������
manager_id FROM employees, ������ ���� �� ���� � ������, ������ �� ��������
*/

/*������� �������� ������������ � ����������� � ������������ �� �� ���� 
�������������*/
select * from departments;
select * from jobs;
select * from employees ;

SELECT department_name, MIN(salary), MAX(salary) FROM 
(SELECT salary, department_name FROM employees e JOIN departments d
ON (e.department_id = d.department_id))
GROUP BY department_name;
