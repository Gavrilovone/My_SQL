/*Функция LENGTH(s) - вычисляет длинну строки*/

select first_name, LENGTH(first_name)from employees;

select LENGTH('Alexey Gavrilov') from dual;
/*15 символов,  пробел тоже считается*/

select salary, LENGTH(salary), hire_date, LENGTH(hire_date) from employees;
/*колонки с числоами и с датами сначала конвертируются в текст */

select country_name from countries where LENGTH(country_name)>8;

select country_name from countries order by LENGTH(country_name);
/*Вывод стран  в порядке по возрастанию по параметру длинны названия страны*/