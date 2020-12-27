#1 Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
#The CITY table is described as follows:

Select *
from city
where countrycode = 'USA' and population > 100000;

#2 Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select name
from city 
where countrycode = 'USA' and population > 120000;

#3 Query all columns (attributes) for every row in the CITY table. 
select *
from city;

#4Query all columns for a city in CITY with the ID 1661.
Select *
from city
where ID = 1661;

#5 Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select *
from city
where countrycode = 'JPN';

#6 Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. 
select name
from city
where countrycode = 'JPN';

#7 Query a list of CITY and STATE from the STATION table. 
select city, state
from station;

#8 Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. 

select distinct city 
from station
where (ID % 2) = 0;