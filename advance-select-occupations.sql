/*
Problems:
https://www.hackerrank.com/challenges/occupations/problem

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

[INPUT]
+----------+----------------+
| Name     | Occupation     |
+----------+----------------+
| Samantha | Doctor         |
| Julia    | Actor          |
| Maria    | Actor          |
| Meera    | Singer         |
| Ashely   | Professor      |
| Ketty    | Professor      |
| Christeen| Professor      |
| Jane     | Actor          |
| Jenny    | Doctor         |
| Priya    | Singer         |
+----------+----------------+

[OUTPUT]
+----------+-----------+------------+-----------+
| Doctor   | Singer    | Professor  | Actor     |
+----------+-----------+------------+-----------+
| Jenny    | Meera     | Ashely     | Jane      |
| Samantha | Priya     | Christeen  | Julia     |
| NULL     | NULL      | Ketty      | Maria     |
+----------+-----------+------------+-----------+

*/

-- Set the row number as 1st column (@ for declare variable)
set @r1=0, @r2=0, @r3=0, @r4=0;

SELECT MIN(Doctor), MIN(Singer), MIN(Professor), MIN(Actor)
FROM (
    SELECT CASE 
        WHEN Occupation = 'Doctor' then (@r1 := @r1+1)
        WHEN Occupation = 'Singer' then (@r2 := @r2+1)
        WHEN Occupation = 'Professor' then (@r3 := @r3+1)
        WHEN Occupation = 'Actor' then (@r4 := @r4+1) end as RowNumber,
        -- := is for assignment in MySQL

    -- Create the rest of the column as the occupation
        CASE WHEN Occupation = 'Doctor' then Name end as Doctor,
        CASE WHEN Occupation = 'Singer' then Name end as Singer,
        CASE WHEN Occupation = 'Actor' then Name end as Actor,
        CASE WHEN Occupation = 'Professor' then Name end as Professor,
    FROM OCCUPATIONS
    ORDER BY Name
) as temp
GROUP BY RowNumber;