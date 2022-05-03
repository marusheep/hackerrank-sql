/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. 

Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

==Input Format==

The following tables contain challenge data:

## Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
| Column    | Type    |
|-----------|---------|
| hacker_id | Integer |
| name      | String  |

## Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge. 
| Column       | Type    |
|--------------|---------|
| challenge_id | Integer |
| hacker_id    | Integer |

*/

SELECT C.hacker_id, H.name, COUNT(C.hacker_id) AS C_count
    FROM Hackers AS H 
        JOIN Challenges AS C ON H.hacker_id = C.hacker_id
    GROUP BY C.hacker_id, H.name

HAVING C_count = 
    (
        SELECT MAX(temp.cnt)
            FROM (
                SELECT(COUNT(hacker_id) AS cnt
                FROM Challenges
                GROUP BY hacker_id
                ORDER BY hacker_id) temp
            )
    OR
    C_count IN
    (
        SELECT t.cnt
        FROM (
            SELECT COUNT(*) AS cnt
            FROM Challenges
            GROUP BY hacker_id) t
        )
        GROUP BY t.cnt
        HAVING count(t.cnt) = 1
    )

ORDER BY COUNT(C.challenge_id) DESC, C.hacker_id;