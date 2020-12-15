/* https://www.hackerrank.com/challenges/revising-the-select-query/problem */

SELECT * FROM CITY
    WHERE POPULATION > 100000 AND COUNTRYCODE = "USA";

/* https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?h_r=next-challenge&h_v=zen */

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = "USA" AND POPULATION > 120000;

/* https://www.hackerrank.com/challenges/select-all-sql/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen */

SELECT * FROM CITY;

/* https://www.hackerrank.com/challenges/select-by-id/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen */

SELECT * FROM CITY
    WHERE ID = 1661;


/* 
Japanese Cities' Attributes
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/

SELECT * FROM CITY
    WHERE COUNTRYCODE = "JPN";

/*
Japanese Cities' Names
https://www.hackerrank.com/challenges/japanese-cities-name/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/

SELECT NAME FROM CITY
    WHERE COUNTRYCODE = "JPN"

/*
Weather Observation Station 1
https://www.hackerrank.com/challenges/weather-observation-station-1/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/

SELECT CITY,STATE
    FROM STATION;

/*
Weather Observation Station 3
https://www.hackerrank.com/challenges/weather-observation-station-3/problem?h_r=next-challenge&h_v=zen
*/
SELECT DISTINCT(CITY) FROM STATION
    WHERE ID%2 = 0;

/*
Weather Observation Station 4
https://www.hackerrank.com/challenges/weather-observation-station-4/problem?h_r=next-challenge&h_v=zen
*/
SELECT (COUNT(CITY)-COUNT(DISTINCT(CITY)))
    FROM STATION;

/*
Weather Observation Station 5
https://www.hackerrank.com/challenges/weather-observation-station-5/problem?h_r=next-challenge&h_v=zen
*/
