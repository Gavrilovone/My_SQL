/*MONTHS_BETWEEN(start_date, end_date) - функци€ считает количество мес€цев
  между start_date и end_date, где start_date - это "c",  end_date - это "по"
*/
select employee_id, MONTHS_BETWEEN(end_date, start_date) from job_history;
select MONTHS_BETWEEN('24.03.1988', '14.01.2023') from dual;
/*Output: -417,677419354838709677419354838709677419*/ 