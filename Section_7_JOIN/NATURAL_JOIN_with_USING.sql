/*NATURAL JOIN with USING: � ������� �� ������������, ����� ����� ����������
�� ������ �������

*/

select first_name, last_name, salary, department_name,  department_name, 
department_id, d.manager_id, e.manager_id
from employees e JOIN departments d  USING(department_id);
/*������� ������� ���� � ����� �������� ����� ������ ������ ���, ��� ���
����� ������(���������������), � department_id �� �� ����� �������� �����
����� ���, ������ ��� �� ������� ����� ��� ���� ��������*/
