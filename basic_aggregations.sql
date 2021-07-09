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

SELECT CEIL((AVG(salary)) - (AVG(REPLACE(salary, 0, '')))) AS avg_salary FROM employees;

/*Top Earners
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as 
the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.*/

select (salary * months) as earnings, count(*)
from employee
group by 1
order by earnings desc limit 1;

/*Weather Observation Station 2
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of  2 decimal places.
The sum of all values in LONG_W rounded to a scale of  2 decimal places.*/

select round(sum(lat_n),2), round(sum(long_w),2)
from station;

/*Weather Observation Station 13
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.788 and less than 137.2345 . 
Truncate your answer to 4 decimal places.