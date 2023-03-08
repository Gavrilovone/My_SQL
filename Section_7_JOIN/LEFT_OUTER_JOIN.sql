/*LEFT OUTER JOIN*/

SELECT first_name, last_name, salary, department_name
FROM employees e  JOIN departments d 
ON(e.department_id = d.department_id);

SELECT first_name, last_name, salary, department_name
FROM employees e LEFT OUTER JOIN departments d 
ON(e.department_id = d.department_id);
/*����� � output ���������� ��� ���� ������ �� ����� �������(� ������ ������ 
employees) ������� �� ������������� �������, ������ � ��� ��� department_id, 
�������������� department_name = null
*/