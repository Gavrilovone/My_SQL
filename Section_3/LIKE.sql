/*Like - оператор сравнения, который работает только с текстовым типом*/

select * from employees where first_name = 'Steven';
select * from employees where first_name LIKE 'S%';
/*С помощью оператора LIKE мы можем найти всех сотрудников у которых имя начинается
  с "S" значок "%" означает , что после "S" может идти любое количество символов 
*/
select * from employees where first_name LIKE '%r';
/*Или всех сотрудников у кого имена заканчиваются на букву "r"   */

select * from employees where first_name LIKE 'A%r';
/*Начинается на "A" и заканчивается "r"*/

select * from employees where first_name LIKE 'A_r';
/*Между "A" и "r" 1 симво*/

/*
  Например ситуация, что нам нужно найти всех сотрудников у которых job_id
  начинается с "ST_"  и мы могли бы записать так:
*/
select * from employees where job_id LIKE 'ST_%';

/*Но при использовании оператора LIKE, знаки "%" и "_" являются специальными
  Чтобы сделать любой символ на время не специальным, используют оператор escape
*/
select * from employees where job_id LIKE 'ST\_%' ESCAPE '\';
/*Теперь после "\" один символ, в данном случае "_" является не специальным
  символом в рамках оператора LIKE, а обычныv underscore
  вместо "\" можно использовать любой символ, например "$"
*/
select * from employees where job_id LIKE 'ST$_%' ESCAPE '$';