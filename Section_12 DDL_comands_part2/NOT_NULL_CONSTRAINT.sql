/*NOT NULL CONSTRAINT - не разрешает столбцам иметь значения null*/

CREATE TABLE students2(
id number ,
name varchar2(15),
course number,
faculty_id integer CONSTRAINT st_course_notNull NOT NULL,
avg_score number(5, 2),
start_date date,
scholarship integer
);

/*Для каждого столбца при необходимости нужно создавать этот constraint отдельно
Нельзя создавать costraint not null table level, только можно line level*/

ALTER TABLE students2 MODIFY(course null); /*убрали constarint*/