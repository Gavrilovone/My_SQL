/*COUNT*/
select COUNT(*) from employees; /*output 107 ��������� ���������� �����*/
select COUNT(*) from employees where salary > 5000; /*output 58*/
/*COUNT(*) - ������� ���������� ���� �����*/

select COUNT(salary) from employees; /*output 107 ���� ����� , 
�� ���� ��� null,  null �� ������� �� �����*/

select COUNT(NVL(commission_pct, 0)) from employees; /*output 107 ��� ���
������� NVL ������ �������� null � ������ ������ �� 0*/

select COUNT(DISTINCT commission_pct) from employees; /*output 7 ��� ���
DISTINCT �������� ������ ���������� ��������*/

select COUNT(first_name), COUNT(DISTINCT first_name) from employees; /*
output 107 ,  91*/