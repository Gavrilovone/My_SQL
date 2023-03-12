/*UNIQUE CONSTRAINT
Принуждает столбец(реже столбцы) содержать только уникальные значение, исключение NULL
null может содержать при этом сколько угодно
*/

CREATE TABLE students2(
id number CONSTRAINT st_id_unique UNIQUE,/*можно просто id number  UNIGUE(1й способ line level)*/
name varchar2(15),
course number,
faculty_id integer,
avg_score number(5, 2),
start_date date,
scholarship integer
CONSTRAINT st_id_unique UNIQUE(id)/*можно после всех столбцов прописать(второй
способ - table level)*/
UNIQUE(id)/*можно так, имя ему дасться автоматически*/
);

CREATE TABLE faculties(
id number,
name varchar2(15)
);
select * from students2;
INSERT INTO students2 values
(1, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);

INSERT INTO students2 values
(1, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
/*при попытке сделать данный insert выйдет ошибка : Error report -
ORA-00001: unique constraint (HR.ST_ID_UNIQUE) violated так как id = 1 уже есть*/

INSERT INTO students2 values
(null, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
INSERT INTO students2 values
(null, 'Alexey', 3, 1, 8.7, TO_DATE('15-SEP-17'), 1500);
/*но если значения id = null то можно сколько угодно строк*/

/*можно добавить constraint после создания таблицы*/
ALTER TABLE students2 add CONSTRAINT st_id_unique UNIQUE(id);
/*но если в таблице уже есть значения, то они должны удовлетворять условиям этого
constraint иначе ничего не получится
*/

/*еще один вариант*/
ALTER TABLE students2 MODIFY(id CONSTRAINT st_id_unique UNIQUE);
ALTER TABLE students2 MODIFY(id UNIQUE);

ALTER TABLE students2 DROP CONSTRAINT st_id_unique; /*удалить constraint*/
