/*Like - �������� ���������, ������� �������� ������ � ��������� �����*/

select * from employees where first_name = 'Steven';
select * from employees where first_name LIKE 'S%';
/*� ������� ��������� LIKE �� ����� ����� ���� ����������� � ������� ��� ����������
  � "S" ������ "%" �������� , ��� ����� "S" ����� ���� ����� ���������� �������� 
*/
select * from employees where first_name LIKE '%r';
/*��� ���� ����������� � ���� ����� ������������� �� ����� "r"   */

select * from employees where first_name LIKE 'A%r';
/*���������� �� "A" � ������������� "r"*/

select * from employees where first_name LIKE 'A_r';
/*����� "A" � "r" 1 �����*/

/*
  �������� ��������, ��� ��� ����� ����� ���� ����������� � ������� job_id
  ���������� � "ST_"  � �� ����� �� �������� ���:
*/
select * from employees where job_id LIKE 'ST_%';

/*�� ��� ������������� ��������� LIKE, ����� "%" � "_" �������� ������������
  ����� ������� ����� ������ �� ����� �� �����������, ���������� �������� escape
*/
select * from employees where job_id LIKE 'ST\_%' ESCAPE '\';
/*������ ����� "\" ���� ������, � ������ ������ "_" �������� �� �����������
  �������� � ������ ��������� LIKE, � ������v underscore
  ������ "\" ����� ������������ ����� ������, �������� "$"
*/
select * from employees where job_id LIKE 'ST$_%' ESCAPE '$';