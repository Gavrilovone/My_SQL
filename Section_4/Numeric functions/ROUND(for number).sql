/*??????? ROUND(n, precision) - ???????? ?????????
  ??? n - ??? ?????
      precision - ????????(??????????????)
*/

select ROUND(3.143434,4) from dual; /* output: 3 ,???? ?? ???????????? ?????? ????????
?? ?????????? ???? ?? ?????? ????? */

select ROUND(346647, -1) from dual; /* output: 346650 ,???? ? ???????? ??????? 
????????? ???????????? ????????????? ?????, ?? ?????????? ?????????? -1(???????),
-2(???????), -3(?????) ? ??? ?????
*/

/*???????? ????? ??? ????? ?????????? ?? ?????? ??????-?????? ?????????*/
select (SYSDATE-hire_date)*employee_id from employees;
/*output: 714210,2280092592592592592592592592592593
          .........................................
          818764,4325694444444444444444444444444445              
*/
select ROUND((SYSDATE-hire_date)*employee_id) bonus from employees;
/*output: 714210
          637826
          818765
 bonus - ??? alias          