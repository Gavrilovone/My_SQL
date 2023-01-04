/*������� TRIM() - ������� ������  � ������ ������. � ����������� �� ����������
  �������, � �����, ������� � � �����:
  - trailing - ������ � ����� ������
  - leading -  ������ � ������ ������
  - both - � � ������ � � ����� �������
  
  ����� ������������ ��� �������� ��������, ��� ��� ����� ���������� ��������� 
  �� ������ ���������� � ����� ��� ������� � ������� � � �����
*/

select TRIM(trailing 'q' from 'Alexeyqqqqqqq') from dual; /*output: Alexey
 ���� ������ �������: ����� ��� 'q' �� ������ 'Alexeyqqqqqqq', � ����� ������ 
*/

select TRIM(leading '*' from '***Alexey**') from dual; /*output: Alexey**
 ���� ������ �������: ����� ��� '*' �� ������ '***Alexey**', � ������ ������ 
*/

select TRIM(both '*' from '***Alexey**') from dual; /*output: Alexey
 ���� ������ �������: ����� ��� '*' �� ������ '***Alexey**', � ����� ������
*/