/*JOIN
� ������� JOIN �� ����� ��������� ���������� ����� �� ��������� ������
*/

select * FROM employees t1; /*t1 - ��� ����� ��� ���� ������� employees
��� ��������� ��� ������ � join
*/
select employees.first_name FROM employees;
select t1.first_name FROM employees t1;
/*��� ���� � ����*/

select * FROM departments; 

/*�� �� ������ � ����� department_name ����� � ���������� ������ ����  �� 
employees, ��� ��� ��� ��� ����� �������, � ���� ������ department_id. ������
� ���� ����� join
*/