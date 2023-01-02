/*ORDER BY - �������� ��� ������������� ��� ����� ������� ����������� ��� �����
  ���� ��� �� ���������, ��� ��������, ��� ����� �������� � ����� � ��� �� ����
*/

select first_name, salary from employees order by salary;
/*��������� ������ �������������� �� ��������(�� ���������)�� �����������*/

select first_name, salary, hire_date from employees 
where job_id = 'IT_PROG'order by hire_date asc;
/*asc - �������� �����, ���������� ���������� �� �����������, �� ��-�� ����, ��� 
  �� ��������� ���������� ����� ����������, ��� ������ �� �����
*/
select first_name, salary, hire_date from employees 
where job_id = 'IT_PROG'order by first_name desc;
/*desc - �������� �����, ���������� ���������� �� ��������
*/

/*����� ����� ������ order by �� ���������, ���� �� ������ ��� �� �������*/
select last_name, salary, hire_date, hire_date+salary*2 expr
from employees
where employee_id>120
order by expr; /*expr - ��� alias, ����� �� ������ ������� ���������*/

select * from employees order by commission_pct asc nulls first;
select * from employees order by commission_pct desc nulls last;
/*���� �� �����, ����� �������� � nulls ���������� ������� ����� nulls first
  ��� ��� ��� ����� ��� ����� ��������� � �����, � ���� �����, ����� nulls
  ���������� ����������, ����� nulls last, ���-��� ��� ���������� �� ��������
  null ����� �������� ������
  
  /*����� �� ����� order by ��, �� ����� �� ������ ��� �������, � �����
    ������� ���������� ����� ��� � ����� ������ �����(� ������ � salary ��� 2)
  */
  select first_name, salary from employees order by 2;
  /*������ ���� ��� first_name, salary � �� ������� �������� � �������*/
  
  select job_id, employee_id, first_name, last_name, salary, hire_date
  from employees
  order by job_id desc, last_name, 4 desc;
  /*���������� �� ����������  ��������*/
