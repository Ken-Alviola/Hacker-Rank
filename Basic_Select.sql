#Weather Observation Station 4
#Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 
#The STATION table is described as follows:

select count(city) - count(distinct city)
from station;

/* Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically. */

select city, length(city)
from station
order by length(city),city ASC
limit 1;

select city, length(city)
from station
order by length(city)DESC ,city DESC
limit 1;

/*Weather Observation Station 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
Input Format*/



select distinct city
from station
where city like 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%';

/*Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.*/

select distinct city
from station
where city REGEXP '[aeiou]$';

/*Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.*/

select distinct city
from station
where city REGEXP '^[aeiou].*[aeiou]$';

/*Weather Observation Station 9
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.*/
select distinct city
from station
where city not REGEXP '^[aeiou]';

/*Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.*/
select distinct city
from station
where city not REGEXP '[aeiou]$';

/*Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.*/

select distinct city
from station
where city not REGEXP '^[aeiou].*[aeiou]$';

/*Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates. */

select distinct city
from station
where city not REGEXP '^[aeiou]' and city not REGEXP '[aeiou]$';

/*Higher Than 75 Marks
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending 
in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID. */
select name
from students
where marks > 75
order by RIGHT(NAME, 3), ID ASC;

/*Employee Names
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.*/

select name
from employee
order by name;

/*Employee Salaries
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having 
a salary greater than 2k per month who have been employees for less than 10  months.
 Sort your result by ascending employee_id.

