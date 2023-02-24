/*HAVING -   � ���� ���������� �� ����������� ������� ��������� � ����� 
��������� */

select department_id, COUNT(*) from employees
WHERE LENGTH(first_name)>4 /*������� ����������� �� ����� �����*/
GROUP BY department_id /*����� ����������� �� department_id*/
HAVING count(*)>3 /*��������� ������ �� � ���� ������ 3� ����������*/
ORDER BY department_id;

/*HAVING ������������ ��� ��� ���� GROUP BY*/