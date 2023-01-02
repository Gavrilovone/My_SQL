/* UPPER - ��� ������� ��������������� LOWER, ������ ��� ������ �� ����� ����������*/

select first_name, UPPER(first_name) from employees;
/* ������� UPPER(s) ��� s ��� ��������(�����) �����  � ������ ��� ����� ���������� */

select UPPER('�����, ��� ����') from dual;  /* output: ������, ��� ����

/* ���� �� ����� ����� �������� � ������ David, �� �� ����� ��� �� �������,
� ��������� ��� ��������� �����, �� ����� �������� ���: */

select * from employees where UPPER(first_name) = 'DAVID';
/* ��� ������ ������ � ������� first_name, ������� ����� ������ ��� �����
���������� � ���������� � ����� 'DAVID' */
select * from employees where UPPER(first_name) like '%EN%';