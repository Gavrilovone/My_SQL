/*MONTHS_BETWEEN(start_date, end_date) - ������� ������� ���������� �������
  ����� start_date � end_date, ��� start_date - ��� "c",  end_date - ��� "��"
*/
select employee_id, MONTHS_BETWEEN(end_date, start_date) from job_history;
select MONTHS_BETWEEN('24.03.1988', '14.01.2023') from dual;
/*Output: -417,677419354838709677419354838709677419*/ 