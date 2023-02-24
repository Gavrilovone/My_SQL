/*NATURAL JOIN with ON: �������� ���������� ����������� ���� �� �������� 
� ������� ������� 

*/

select first_name, last_name, jh.job_id, start_date, end_date
from employees em JOIN job_history jh 
ON (em.employee_id = jh.employee_id AND em.department_id = jh.department_id
AND salary > 10000);
/*� ������ ������� ����������� ���������� �� ���� ��������, salary > 10000
�� ���������� � ����������� � ������� ����� �� ������ � ���������� where
*/