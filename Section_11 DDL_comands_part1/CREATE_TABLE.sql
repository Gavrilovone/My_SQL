/*CREATE TABLE*/
CREATE TABLE students(
student_id integer,
name varchar2(15),
start_date date DEFAULT ROUND(SYSDATE),
scholarship number(4,2),
avg_score number(4,2) default 5
);

/*
  - varchar2(15) максимальная длина
  - DEFAULT ROUND(SYSDATE) - означает, что если м не указываем дату, то 
  по умолчанию будет вставлено системная дата
  - number(4,2) - дробное число из 6 символов 2 из которых  после запятой
  
  в названии таблицы мы не написали schema.students по-этому по умолчанию
  таблица создасться в схеме под которой user, в данном случае hr, но если мы 
  хотим создать таблицу в другой схеме, то необходимо также иметь права к другой схеме
*/

select * from students;
INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(1, 'Alexey', TO_DATE('18-SEP-20'), 5, 5);

INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(2, 'Ivan', TO_DATE('19-SEP-20'), 50.2, 8.2);

DELETE FROM students where name =  'Ivan';

INSERT INTO students (student_id, name, scholarship)
VALUES(3, 'Sergey', 50);
/*Если бы небыло дефолтных значений, то столбцы которые мы не указали были ms null*/

