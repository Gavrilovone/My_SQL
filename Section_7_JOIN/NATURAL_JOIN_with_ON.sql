/*NATURAL JOIN with ON: возможно произвести объединение даже по столбцам 
с разными именами 

*/

select first_name, last_name, jh.job_id, start_date, end_date
from employees em JOIN job_history jh 
ON (em.employee_id = jh.employee_id AND em.department_id = jh.department_id
AND salary > 10000);
/*В данном примере объединение происходит по двум столбцам, salary > 10000
не учавствует в объединении и поэтому лучше го писать в стейтманте where
*/