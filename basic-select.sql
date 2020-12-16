/* https://www.hackerrank.com/challenges/revising-the-select-query/problem 
*/

SELECT * FROM CITY
    WHERE POPULATION > 100000 AND COUNTRYCODE = "USA";

/* https://www.hackerrank.com/challenges/revising-the-select-query-2/
*/

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = "USA" AND POPULATION > 120000;

/* https://www.hackerrank.com/challenges/select-all-sql/
*/

SELECT * FROM CITY;

/* https://www.hackerrank.com/challenges/select-by-id/
*/

SELECT * FROM CITY
    WHERE ID = 1661;


/* 
Japanese Cities' Attributes
https://www.hackerrank.com/challenges/japanese-cities-attributes/
*/

SELECT * FROM CITY
    WHERE COUNTRYCODE = "JPN";

/*
Japanese Cities' Names
https://www.hackerrank.com/challenges/japanese-cities-name/
*/

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = "JPN"

/*
Weather Observation Station 1
https://www.hackerrank.com/challenges/weather-observation-station-1/
*/

SELECT CITY,STATE
    FROM STATION;

/*
Weather Observation Station 3
https://www.hackerrank.com/challenges/weather-observation-station-3/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE ID%2 = 0;

/*
Weather Observation Station 4
https://www.hackerrank.com/challenges/weather-observation-station-4/
*/
SELECT (COUNT(CITY)-COUNT(DISTINCT(CITY)))
    FROM STATION;

/*
Weather Observation Station 5
https://www.hackerrank.com/challenges/weather-observation-station-5/
*/
SELECT CITY, length(CITY) FROM STATION
    ORDER BY length(CITY), CITY ASC
    LIMIT 1;
SELECT CITY, length(CITY) FROM STATION
    ORDER BY length(CITY) DESC
    LIMIT 1;

/*
Weather Observation Station 6
https://www.hackerrank.com/challenges/weather-observation-station-6/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE CITY REGEXP "^(?i)[aeiou].*"
    ORDER BY CITY ASC;

/*
Weather Observation Station 7
https://www.hackerrank.com/challenges/weather-observation-station-7/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE CITY REGEXP ".*(?i)[aeiou]$";

/*
Weather Observation Station 8
https://www.hackerrank.com/challenges/weather-observation-station-8/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE CITY REGEXP ".*(?i)[aeiou]$" AND CITY REGEXP "^(?i)[aeiou].*";

/*
Weather Observation Station 9
https://www.hackerrank.com/challenges/weather-observation-station-9/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE CITY REGEXP "^(?i)[^aeiou].*";

/*
Weather Observation Station 10
https://www.hackerrank.com/challenges/weather-observation-station-10/
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE CITY NOT REGEXP ".*(?i)[aeiou]$";

/*
Weather Observation Station 11
https://www.hackerrank.com/challenges/weather-observation-station-11/
*/
