/*Example JOIN*/

SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM countries;
SELECT * FROM locations NATURAL JOIN countries NATURAL JOIN regions;
/*сначала объединятся locations и countries, а потом на основе этого результата
идет объединение с regions
*/