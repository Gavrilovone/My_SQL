/*��������� AND ������ ��� � OR*/
select * from employees;
select * from employees where first_name like '__n%' AND commission_pct is null;
/*2 underscore ������ "__" ���������� ������, ������� �������� ���� ����
������ "n" ������, ����� ����� ��� ����� � ������� 3 ����� "n"*/

select * from employees where first_name like 'A%' AND job_id = 'SA_REP';
/*������� ��� � ���� ��� ���������� � "A"*/

select * from employees 
where first_name like '__n%' AND commission_pct is null
OR
first_name like 'A%' AND job_id = 'SA_REP';
/*������� �������� 2 AND � ������ ����� OR*/
