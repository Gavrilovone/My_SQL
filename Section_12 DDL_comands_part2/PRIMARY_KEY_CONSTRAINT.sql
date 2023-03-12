/*PRIMARY KEY CONSTRAINT - принуждает столбец иметь только уникальные значения
и не разрешает содержать значения NULL. создав этот constraint,  мы добиваемся 
тех же результатов, как если бы мы одновременно создали unique и not null

у реляционные базы данных есть негласное правило, чтобы хотябы один столбец 
был primary key, но не всегда и не все этму придерживаются, что не очень хорошо

по примеру предыдущих constraints если таблица уже создана и мы хотим создать
constraint primary key на столбец, то в нем не должно быть значений тгдд и все 
значения должны быть уникальны

в таблице может быть только один primary key, но если нам надо, то мы можем 
для нескольких столбцов создать unique и not null

допускается также писать table level
*/

CREATE TABLE students2(
id number CONSTRAINT st_id_pk PRIMARY KEY,
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
);