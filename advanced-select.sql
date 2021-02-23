/* Type of Triangle
 https://www.hackerrank.com/challenges/what-type-of-triangle/problem */
SELECT CASE
        WHEN A + B > C
        AND B + C > A
        AND A + C > B THEN -- define triangle
        CASE
            WHEN A = B
            AND B = C THEN "Equilateral"
            WHEN A = B
            OR B = C
            OR A = C THEN "Isosceles"
            WHEN A != B
            AND B != C THEN "Scalene"
        END
        ELSE "Not A Triangle"
    END
FROM TRIANGLES

/* THE PADS
     https://www.hackerrank.com/challenges/the-pads/problem */
    -- use substring that is able to choose the start and end character.

SELECT concat(
        Name,
        concat('(', substring(Occupation, 1, 1), ')')
    )
FROM OCCUPATIONS
ORDER BY Name;
SELECT concat(
        "There are a total of",
        concat(
            " ",
            count(Occupation),
            concat(" ", concat(lower(Occupation), "s."))
        )
    ) As total
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY total;

-- How to check plural and singular, TBC?