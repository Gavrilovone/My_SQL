/* UPPER - это функция противоположная LOWER, тоесть она делает ве буквы заглавными*/

select first_name, UPPER(first_name) from employees;
/* функция UPPER(s) где s это параметр(текст) берет  и делает все буквы заглавными */

select UPPER('Пивет, КАК ДЕЛА') from dual;  /* output: ПРИВЕТ, КАК ДЕЛА

/* если мы хотим найти человека с именем David, но не знаем как он записан,
с заглавной или прописной буквы, то можем записать так: */

select * from employees where UPPER(first_name) = 'DAVID';
/* для каждой строки в столбце first_name, функция будет делать все буквы
заглавными и сравнивать с нашим 'DAVID' */
select * from employees where UPPER(first_name) like '%EN%';