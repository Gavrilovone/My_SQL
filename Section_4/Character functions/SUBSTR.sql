/*������� SUBSTR(s, start position, number of characters) ������� � ���������� 
  �����-�� ������� �� ������, ���������� � ���������
  ��� number of characters - ���������� ��������(����� ������, ����� ���)
*/ 

select SUBSTR('������� ��������', 2) from dual; /*output: ������ ��������*/
select SUBSTR('������� ��������', 2, 5) from dual; /*output: �����*/
select SUBSTR('������� ��������', -3, 1) from dual; /*output: � 
���� ������ �������� � �������, �� ������ ������� ���� � ����� �� ���� 
*/