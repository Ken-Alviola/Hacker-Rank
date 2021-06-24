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



