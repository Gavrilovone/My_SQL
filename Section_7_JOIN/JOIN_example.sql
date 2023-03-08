/*JOIN example*/
SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM countries;
SELECT * FROM locations NATURAL JOIN countries NATURAL JOIN regions;
/*������ ���������� ���������� ������ regions � locations, � ����� ����������
��������� ������������ � regions
*/
SELECT * FROM locations JOIN countries USING(country_id)
JOIN regions USING (region_id);/*���� �����, ������ �� ��� ���� ���������
��� ���������� ���� �� country_id � �� regions_id �����
*/

/*������� ���������� � ����� ���������, ��� ������ job_id, 
�������� ������������ � ������� ������ ���*/
SELECT first_name, last_name, jh.job_id, start_date, end_date, department_name
FROM employees e JOIN job_history jh ON(e.employee_id = jh.employee_id)
JOIN departments d ON(jh.department_id = d.department_id)