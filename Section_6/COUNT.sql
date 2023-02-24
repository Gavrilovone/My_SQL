/*COUNT*/
select COUNT(*) from employees; /*output 107 считатетс количество строк*/
select COUNT(*) from employees where salary > 5000; /*output 58*/
/*COUNT(*) - считает количество всех строк*/

select COUNT(salary) from employees; /*output 107 тоже самое , 
но если нет null,  null он считать не будет*/

select COUNT(NVL(commission_pct, 0)) from employees; /*output 107 так как
функция NVL меняет значение null в даннос случае на 0*/

select COUNT(DISTINCT commission_pct) from employees; /*output 7 так как
DISTINCT означает только уникальные значения*/

select COUNT(first_name), COUNT(DISTINCT first_name) from employees; /*
output 107 ,  91*/