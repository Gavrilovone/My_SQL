/*‘ункци€ INSTR(s, search tring, start position, Nth occurrene)
  где s - это строка, текст
      search string - искомый текст
      start position - позици€ дл€ начала работы
      Nth occurrence -N-oe по€вление
      причем об€зательные только первые два, второй и третий параметры опциональны 
      и равны 1,1 по умолчанию
  INSTR очень часто работает в комбинации с SUBSTR
*/

select * from employees where INSTR(job_id, 'PROG')=4;

select  INSTR('јлексей √аврилов', 'л') from dual; /* output: 2  и не смотр€
на то, что в искомом тексте две буквы 'л', он по умолчанию считает позицию первой*/

select * from employees where INSTR(salary, '2')=2;

select  INSTR('јлексей √аврилов', 'л', 3) from dual; /*3 это третий параметр, который
говорит о том, что поиск идет с 3 позиции, поэтому output: 14
*/
select  INSTR('јлексей √аврилов', 'л', 1, 2) from dual; /2 это значит искать нужно 
второе по€влени€ 'л', output: 14 
*/