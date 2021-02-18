/* Type of Triangle
   https://www.hackerrank.com/challenges/what-type-of-triangle/problem */

SELECT
CASE
    WHEN A + B > C AND B + C > A AND A + C > B THEN -- define triangle
        CASE
            WHEN A = B AND B = C THEN "Equilateral"
            WHEN A = B OR B = C OR A = C THEN "Isosceles"
            WHEN A != B AND B != C THEN "Scalene"
        END
    ELSE "Not A Triangle"
END
FROM TRIANGLES


/* THE PADS
    https://www.hackerrank.com/challenges/the-pads/problem */
