/*Objects of database*/
select object_type, count(object_type) from dba_objects group by object_type
order by object_type;

select table_name from user_tables;

/* Table - �������
   view - ���� ���, �������������
   sinonym - ��� alias ��� ������� ��� ��� view
   index - � ������ ������� ������ ��� ���������� ������������������ �����-����
   ����������
   sequence - (������������������) - ���������� ���������� �������� 
   ������������������ �������� �� 1 �� 10 000
*/