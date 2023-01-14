/*Функция MOD(dividend, divisor) - остаток от деления
  где dividend - это делимое
      precision - это делитель
*/

select MOD(7,3) from dual; /*Output: 1, так как в семерке две тройки, остается 1*/
select MOD(3,7) from dual; /*Output: 3, 3 не делится нацело на 7

/*выведем информацию о работниках у которых employee_id четный*/
select * from employees where MOD(employee_id, 2) = 0;

/*Разобъем работников на три команды*/
select employee_id, first_name, last_name, MOD(employee_id, 3)+1 Team
from employees ;

/*employee_id  first_name         last_name      team
  100	       Steven	           King	          2
  101	       Neena	           Kochhar	      3
  102	       Lex	De             Haan	          1
  103	       Alexander	       Hunold	      2
  104	       Bruce	           Ernst	      3       */
