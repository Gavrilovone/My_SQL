/*UNIQUE CONSTRAINT
���������� �������(���� �������) ��������� ������ ���������� ��������, ���������� NULL
null ����� ��������� ��� ���� ������� ������
*/

CREATE TABLE students2(
id number CONSTRAINT st_id_unique UNIQUE,/*����� ������ id number  UNIGUE(1� ������ line level)*/
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
CONSTRAINT st_id_unique UNIQUE(id)/*����� ����� ���� �������� ���������(������
������ - table level)*/
UNIQUE(id)/*����� ���, ��� ��� ������� �������������*/
);

CREATE TABLE faculties(
id number,
name varchar2(15)
);
select * from students2;
INSERT INTO students2 values
(1, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);

INSERT INTO students2 values
(1, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
/*��� ������� ������� ������ insert ������ ������ : Error report -
ORA-00001: unique constraint (HR.ST_ID_UNIQUE) violated ��� ��� id = 1 ��� ����*/

INSERT INTO students2 values
(null, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
INSERT INTO students2 values
(null, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
/*�� ���� �������� id = null �� ����� ������� ������ �����*/

/*����� �������� constraint ����� �������� �������*/
ALTER TABLE students2 add CONSTRAINT st_id_unique UNIQUE(id);
/*�� ���� � ������� ��� ���� ��������, �� ��� ������ ������������� �������� �����
constraint ����� ������ �� ���������
*/

/*��� ���� �������*/
ALTER TABLE students2 MODIFY(id CONSTRAINT st_id_unique UNIQUE);
ALTER TABLE students2 MODIFY(id UNIQUE);

ALTER TABLE students2 DROP CONSTRAINT st_id_unique; /*������� constraint*/
