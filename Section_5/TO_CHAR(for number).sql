/*TO_CHAR(number, format mask, nls_parameters) - первод числа в текст
  обязательный тольуо первый, остальные два параметра опциональны
  
  Конвертация числа в текст, используя функцию TO_CHAR означает взять число и 
  сделать из него текст в том виде, в каком указан наш формат, если таковой имеетс 
*/

select TO_CHAR(18) from dual;

select TO_CHAR(18, '99999') from dual; /* Output:18 где 9999 это ширина(кол-во символов)*/
select TO_CHAR(18, '099999') from dual; /* Output:  000018
ширина 6 символов, если меньше, то перед числом ставь 0, но общее число символов 6
*/
select TO_CHAR(18.35, '099999.999') from dual; /*Output:  000018.350  */
select TO_CHAR(18225335, '99,999,999') from dual;/*Output:  18,225,335*/
select TO_CHAR(18225335, '99G999G999') from dual;/*Output:  18,225,335*/
select TO_CHAR(188, '$999') from dual;/*Output:  188$*/
select TO_CHAR(188, 'L999') from dual;/*Output:  188$*/
select TO_CHAR(-18, '999MI') from dual;/*Output:  18-*/
select TO_CHAR(-18, '099PR') from dual;/*Output:  <018>*/
select TO_CHAR(-18, 'S099') from dual;/*Output:  -18*/
select TO_CHAR(18, 'S099') from dual;/*Output:  +18*/

select first_name, salary*1.11111111,
TO_CHAR(salary*1.11111111, '$999,999.99'),
TO_CHAR(salary*1.11111111, '$9,999.99') from employees;

