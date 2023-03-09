/*CREATE TABLE*/
CREATE TABLE students(
student_id integer,
name varchar2(15),
start_date date DEFAULT ROUND(SYSDATE),
scholarship number(4,2),
avg_score number(4,2) default 5
);

/*
  - varchar2(15) ������������ �����
  - DEFAULT ROUND(SYSDATE) - ��������, ��� ���� � �� ��������� ����, �� 
  �� ��������� ����� ��������� ��������� ����
  - number(4,2) - ������� ����� �� 6 �������� 2 �� �������  ����� �������
  
  � �������� ������� �� �� �������� schema.students ��-����� �� ���������
  ������� ���������� � ����� ��� ������� user, � ������ ������ hr, �� ���� �� 
  ����� ������� ������� � ������ �����, �� ���������� ����� ����� ����� � ������ �����
*/

select * from students;
INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(1, 'Alexey', TO_DATE('18-SEP-20'), 5, 5);

INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(2, 'Ivan', TO_DATE('19-SEP-20'), 50.2, 8.2);

DELETE FROM students where name =  'Ivan';

INSERT INTO students (student_id, name, scholarship)
VALUES(3, 'Sergey', 50);
/*���� �� ������ ��������� ��������, �� ������� ������� �� �� ������� ���� ms null*/

