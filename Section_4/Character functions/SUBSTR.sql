/*функция SUBSTR(s, start position, number of characters) изымает и возвращает 
  какой-то отрывок из текста, указанного в парамтрах
  где number of characters - количество символов(можно писать, можно нет)
*/ 

select SUBSTR('Алексей Гаврилов', 2) from dual; /*output: лексей Гаврилов*/
select SUBSTR('Алексей Гаврилов', 2, 5) from dual; /*output: лексе*/
select SUBSTR('Алексей Гаврилов', -3, 1) from dual; /*output: л 
если второй параметр с минусом, то отсчет позиции идет с права на лево 
*/