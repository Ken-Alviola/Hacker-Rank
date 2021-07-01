/* Revising Aggregations - The Count Function
Query a count of the number of cities in CITY having a Population larger than */

select count(name)
from city
where population > 100000;

/* Revising Aggregations - The Sum Function
Query the total population of all cities in CITY where District is California.*/