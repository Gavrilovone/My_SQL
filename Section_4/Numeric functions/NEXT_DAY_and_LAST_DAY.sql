/*NEXT_DAY(date, day_of_the_week) - ищет следующий день недели
  где date - дата
      day_of_the_week - день недели
      
      например мы пишем в параметре дату и вторник, в output выдаст дату 
      следующей среды
      
      LAST_DAY(date) - показывает последний день месяца
*/

select LAST_DAY('12.04.23') from dual; /* Output: 30.04.23 