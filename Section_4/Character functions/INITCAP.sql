/* ������� INITCAP(s) - ��������� ���� �������� - ���������. ������ ����� ������
���������, � ��������� ������ ���������� */



select INITCAP('�����, ��� ����') from dual;  /* output: ������, ��� ����

/* ���� �� ����� ����� �������� � ������ David, �� �� ����� ��� �� �������,
� ��������� ��� ��������� �����, �� ����� �������� ���: */

select * from employees where INITCAP(first_name) = 'David';
/* ��� ������ ������ � ������� first_name, ������� ����� ������ ������ �����
���������, � �������� ����������  � ���������� � ����� 'David' */
