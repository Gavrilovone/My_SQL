/*CREATE TABLE with SUBQUERY*/
CREATE TABLE new_emps AS (select employee_id, first_name, last_name,
salary, department_id from employees);
/*����� ��� ������ ������ ����� subquery, �� ��� ������� �������������
�����  ������� �� ������� ������� ������� �������� �� ������� ������� �� �������
� subquery, � ��������� �� ������� �� ������� employee
*/

select * from new_emps;

CREATE TABLE new_dep AS (select department_name, MAX(salary) max_salary, 
MIN(salary) min_salary from employees e JOIN departments d
ON (e.department_id = d.department_id) group by department_name);

/*���� ��� ����� �������� ��������� ������� regions, �� ����� ������ �� �����������*/
CREATE TABLE regions2 AS(select * from regions where 5=6);
select * from regions2;
/*��� ��� 5=6 ������ false, ��-����� select ������ �� ������, ������� ����������
�� ����� ������
*/