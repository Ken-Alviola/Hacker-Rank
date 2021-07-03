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
