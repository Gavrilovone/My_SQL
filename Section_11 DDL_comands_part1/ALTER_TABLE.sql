/*ALTER TABLE(изменение таблицы)*/

/*ADD - добавление столбца
  MODIFY - изменить
  DROP COLUMN - удаление колонки
  SET UNUSED COLUMN - сделать колонку неиспользуемой
  DROP UNUSED COLUMNS - удаляет все колонки которые были ранее SET UNUSED
  RENAME COLUMN - изменить название колонки
  READ ONLY - делает таблицу только для селета, DML операции проводить нельзя,
  но при этом удалить ее с помощью команды DROP TABLE можно
  
  для DDL команд commit не нужен, он срабатывает автоматически
  
  Если в другой сессии не закрыта транзакция, то эти команды выполнить не получится
  а если это происходит в одной сессии, то получится, потому что у DDL команд 
  авто комит перд и после
*/

select * from students;
ALTER TABLE students ADD (course number DEFAULT 3); 
ALTER TABLE students MODIFY (avg_score number(5,3));/*изменили тип столбца*/
ALTER TABLE students MODIFY (start_date date DEFAULT null); /*убрали дефолтное
значение у колонки start_date
*/

ALTER TABLE students DROP COLUMN scholarship;/*Удалили колонку scholarship
Если на столбец ссылается что-то из другой таблицы, то его просто так удалить 
не получится
*/

ALTER TABLE students SET UNUSED COLUMN start_date;/*колонка start_date пропала
но не была пока физически удалена, она стала неиспользуемой. для чего это нужно,
DROP занимает время, но когда у нас более подходящее время для удаления колоки
мы можем использовать следующую команду:
*/
ALTER TABLE students DROP UNUSED COLUMNS; /*удалит все колонки которые были SET UNUSED*/
ALTER TABLE students RENAME COLUMN student_id TO id; /*Изменили имя колонки*/




