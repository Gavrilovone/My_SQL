/*HAVING -   в этом стэйтманте мы прописываем условия связанные с групп 
функциями */

select department_id, COUNT(*) from employees
WHERE LENGTH(first_name)>4 /*сначала отсеиваются по длине имени*/
GROUP BY department_id /*потом группировка по department_id*/
HAVING count(*)>3 /*выводятся только те у кого больше 3х работников*/
ORDER BY department_id;

/*HAVING используется там где есть GROUP BY*/