/*GROUP BY*/
select * from employees;
select department_id, COUNT(*) from employees GROUP BY department_id 
ORDER BY 1,2; /*� output ������: ��� depatment_id  � ���������� ����� ��� 
������� ������������, ����� ���������� ����������� �� department_id. ������
��� ���� � ������ ������� ������ ������� �������� salary, ��� ��� ����������� 
���� �� department_id
*/

select department_id, job_id, COUNT(*) from employees GROUP BY 
department_id, job_id ORDER BY 1, 2;