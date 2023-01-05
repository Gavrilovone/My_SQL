/*������� REPLACE(s, search item, replacement item)
  ��� s - ��� ������, �����
      search item - ������� �������
      replacement item - ���������� ������� (��������������), �� ���� ��� �� 
      ������, �� ���������� �������� ���� ��� �������� �� ������ ���������
*/
select REPLACE('������, ��� ����, ������!', '�', '*') from dual;
/*output: ������, ��� ����, �*�*�*! */
select REPLACE('������, ��� ����, ������!', '�', '$$$$') from dual;
/*output: ������, ��� ����, �$$$$�$$$$�$$$$!*/
select REPLACE('������, ��� ����, ������!', '�') from dual;
/*output: ������, ��� ����, ���!*/