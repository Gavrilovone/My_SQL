/*ADD_MONTHS(date, number_of_months) - ���������� �������
 ��� date - ��� ���� 
     number_of_months - ���������� �������
*/
select end_date, ADD_MONTHS(end_date, 4) from job_history;
/*24.07.06	24.11.06
  27.10.01	27.02.02
  15.03.05	15.07.05
  */