/*PRIMARY KEY CONSTRAINT - ���������� ������� ����� ������ ���������� ��������
� �� ��������� ��������� �������� NULL. ������ ���� constraint,  �� ���������� 
��� �� �����������, ��� ���� �� �� ������������ ������� unique � not null

� ����������� ���� ������ ���� ��������� �������, ����� ������ ���� ������� 
��� primary key, �� �� ������ � �� ��� ���� ��������������, ��� �� ����� ������

�� ������� ���������� constraints ���� ������� ��� ������� � �� ����� �������
constraint primary key �� �������, �� � ��� �� ������ ���� �������� ���� � ��� 
�������� ������ ���� ���������

� ������� ����� ���� ������ ���� primary key, �� ���� ��� ����, �� �� ����� 
��� ���������� �������� ������� unique � not null

����������� ����� ������ table level
*/

CREATE TABLE students2(
id number CONSTRAINT st_id_pk PRIMARY KEY,
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
);