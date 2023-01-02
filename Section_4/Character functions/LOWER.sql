select first_name, LOWER(first_name) from employees;
/* ������� LOWER(s) ��� s ��� ��������(�����) �����  � ������ ��� ����� ��������� 
    ������ �������� ����� ���� ��� �����, ��� ������� ��� ���������
*/

select LOWER('�����, ��� ����') from dual;  /* output: �����, ��� ����
/* ������, �������, ������, underscore sql ������������ ��� ��������, ���
�������������� ����

/* ���� �� ����� ����� �������� � ������ David, �� �� ����� ��� �� �������,
� ��������� ��� ��������� �����, �� ����� �������� ���: */

select * from employees where LOWER(first_name) = 'david';
/* ��� ������ ������ � ������� first_name, ������� ����� ������ ��� �����
���������� � ���������� � ����� 'david' */
select * from employees where LOWER(first_name) like '%en%';