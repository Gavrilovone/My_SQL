select first_name, LOWER(first_name) from employees;
/* функция LOWER(s) где s это параметр(текст) берет  и делает все буквы прописные 
    причем параметр может быть как текст, так колонка или выражение
*/

select LOWER('Пивет, КАК ДЕЛА') from dual;  /* output: пивет, как дела
/* пробел, запятую, вопрос, underscore sql воспринимает как делиметр, как
разделительный знак

/* если мы хотим найти человека с именем David, но не знаем как он записан,
с заглавной или прописной буквы, то можем записать так: */

select * from employees where LOWER(first_name) = 'david';
/* для каждой строки в столбце first_name, функция будет делать все буквы
прописными и сравнивать с нашим 'david' */
select * from employees where LOWER(first_name) like '%en%';