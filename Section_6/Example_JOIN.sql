/*Example JOIN*/

SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM countries;
SELECT * FROM locations NATURAL JOIN countries NATURAL JOIN regions;
/*������� ����������� locations � countries, � ����� �� ������ ����� ����������
���� ����������� � regions
*/