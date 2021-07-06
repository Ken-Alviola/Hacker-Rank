/* Revising Aggregations - The Count Function
Query a count of the number of cities in CITY having a Population larger than */

select count(name)
from city
where population > 100000;

/* Revising Aggregations - The Sum Function
Query the total population of all cities in CITY where District is California.*/

select sum(population)
from city
where district = 'california';

/* Revising Aggregations - Averages
Query the average population of all cities in CITY where District is California.*/
select avg(population)
from city
where district = 'california';

/* Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer. */

select round(avg(population))
from city;

/*Japan Population
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN. */
select sum(population)
from city
where countrycode = 'JPN';

/* Population Density Difference
Query the difference between the maximum and minimum populations in CITY.*/

select max(population) - min(population)
from city;

/* The Blunder
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
Input Format*/

