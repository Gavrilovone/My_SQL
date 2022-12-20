select first_name, last_name from employees
where salary BETWEEN 4000 and 10000;

/*Ìîæíî èñïîëüçîâàòü è êîëîíêè*/
select first_name, last_name from employees
where salary BETWEEN employee_id+100 and 10000;

select * from job_history WHERE start_date BETWEEN '01.01.2004' and '31.12.2006';
select * from job_history WHERE start_date>= '01.01.2004' and start_date<='31.12.2006';
/*Ğåçóëüòàò áóäåò òàêîé æå*/
select * from departments WHERE location_id IN (1700, 2400, 1500);
select * from departments WHERE location_id= 1700 OR location_id=2400 OR location_id=1500 ;
/*Ğåçóëüòàò áóäåò òàêîé æå*/

select * from job_history WHERE job_id IN ('IT_PROG', 'ST_CLERK');

/*Íè BETWEEN, íè IN íå äîáàâëÿşò êàêîé-òî íîâîé ôóíêöèîíàëüíîñòè, ïğîñòî ñ
  íèìè áîëåå ëîêàíè÷íî è ıëåãàíòíî
  
  /*IS NULL -ıòî îïåğàòîğ êîòîğûé ïğîâåğÿåò íà null*/
  
  select * from employees where commission_pct IS NULL;
  select * from employees where commission_pct IS NOT NULL;
*/