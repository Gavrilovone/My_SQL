/*NOT NULL CONSTRAINT - �� ��������� �������� ����� �������� null*/

CREATE TABLE students2(
id number ,
name varchar2(15),
course number,
faculty_id integer CONSTRAINT st_course_notNull NOT NULL,
avg_score number(5, 2),
start_date date,
scholarship integer
);

/*��� ������� ������� ��� ������������� ����� ��������� ���� constraint ��������
������ ��������� costraint not null table level, ������ ����� line level*/

ALTER TABLE students2 MODIFY(course null); /*������ constarint*/