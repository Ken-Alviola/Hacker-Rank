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

