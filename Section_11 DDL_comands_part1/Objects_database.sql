/*Objects of database*/
select object_type, count(object_type) from dba_objects group by object_type
order by object_type;

select table_name from user_tables;

/* Table - таблицы
   view - этот вид, пердставление
   sinonym - это alias для таблицы или для view
   index - в первую очередь служит для увеличения производительности какой-либо
   информации
   sequence - (последовательность) - генерирует уникальные значения 
   последовательность например от 1 до 10 000
*/