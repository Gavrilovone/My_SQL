/*ALTER TABLE(��������� �������)*/

/*ADD - ���������� �������
  MODIFY - ��������
  DROP COLUMN - �������� �������
  SET UNUSED COLUMN - ������� ������� ��������������
  DROP UNUSED COLUMNS - ������� ��� ������� ������� ���� ����� SET UNUSED
  RENAME COLUMN - �������� �������� �������
  READ ONLY - ������ ������� ������ ��� ������, DML �������� ��������� ������,
  �� ��� ���� ������� �� � ������� ������� DROP TABLE �����
  
  ��� DDL ������ commit �� �����, �� ����������� �������������
  
  ���� � ������ ������ �� ������� ����������, �� ��� ������� ��������� �� ���������
  � ���� ��� ���������� � ����� ������, �� ���������, ������ ��� � DDL ������ 
  ���� ����� ���� � �����
*/

select * from students;
ALTER TABLE students ADD (course number DEFAULT 3); 
ALTER TABLE students MODIFY (avg_score number(5,3));/*�������� ��� �������*/
ALTER TABLE students MODIFY (start_date date DEFAULT null); /*������ ���������
�������� � ������� start_date
*/

ALTER TABLE students DROP COLUMN scholarship;/*������� ������� scholarship
���� �� ������� ��������� ���-�� �� ������ �������, �� ��� ������ ��� ������� 
�� ���������
*/

ALTER TABLE students SET UNUSED COLUMN start_date;/*������� start_date �������
�� �� ���� ���� ��������� �������, ��� ����� ��������������. ��� ���� ��� �����,
DROP �������� �����, �� ����� � ��� ����� ���������� ����� ��� �������� ������
�� ����� ������������ ��������� �������:
*/
ALTER TABLE students DROP UNUSED COLUMNS; /*������ ��� ������� ������� ���� SET UNUSED*/
ALTER TABLE students RENAME COLUMN student_id TO id; /*�������� ��� �������*/




