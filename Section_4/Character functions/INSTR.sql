/*������� INSTR(s, search tring, start position, Nth occurrene)
  ��� s - ��� ������, �����
      search string - ������� �����
      start position - ������� ��� ������ ������
      Nth occurrence -N-oe ���������
      ������ ������������ ������ ������ ���, ������ � ������ ��������� ����������� 
      � ����� 1,1 �� ���������
  INSTR ����� ����� �������� � ���������� � SUBSTR
*/

select * from employees where INSTR(job_id, 'PROG')=4;

select  INSTR('������� ��������', '�') from dual; /* output: 2  � �� ������
�� ��, ��� � ������� ������ ��� ����� '�', �� �� ��������� ������� ������� ������*/

select * from employees where INSTR(salary, '2')=2;

select  INSTR('������� ��������', '�', 3) from dual; /*3 ��� ������ ��������, �������
������� � ���, ��� ����� ���� � 3 �������, ������� output: 14
*/
select  INSTR('������� ��������', '�', 1, 2) from dual; /2 ��� ������ ������ ����� 
������ ��������� '�', output: 14 
*/