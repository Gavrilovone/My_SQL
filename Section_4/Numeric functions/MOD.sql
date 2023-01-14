/*������� MOD(dividend, divisor) - ������� �� �������
  ��� dividend - ��� �������
      precision - ��� ��������
*/

select MOD(7,3) from dual; /*Output: 1, ��� ��� � ������� ��� ������, �������� 1*/
select MOD(3,7) from dual; /*Output: 3, 3 �� ������� ������ �� 7

/*������� ���������� � ���������� � ������� employee_id ������*/
select * from employees where MOD(employee_id, 2) = 0;

/*�������� ���������� �� ��� �������*/
select employee_id, first_name, last_name, MOD(employee_id, 3)+1 Team
from employees ;

/*employee_id  first_name         last_name      team
  100	       Steven	           King	          2
  101	       Neena	           Kochhar	      3
  102	       Lex	De             Haan	          1
  103	       Alexander	       Hunold	      2
  104	       Bruce	           Ernst	      3       */
