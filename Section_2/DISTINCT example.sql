select distinct job_id from job_history; 
/*distinct это ключевое слово, которое выбирает только уникальные значения*/
select distinct job_id, department_id from job_history; 
/*в данном случае выбирается комбинация из 2х столбцов

select job_id distinct  department_id from job_history;  - так нельзя

*/
