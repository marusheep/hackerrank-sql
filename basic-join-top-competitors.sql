/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

==Input Format==

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

| Column    | Type    |
|-----------|---------|
| hacker_id | Integer |
| name      | String  |

Difficulty: The difficulty_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level.

| Column           | Type    |
|------------------|---------|
| difficulty_level | Integer |
| score            | Integer |

Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.

| Column           | Type    |
|------------------|---------|
| challenge_id     | Integer |
| hacker_id        | Integer |
| difficulty_level | Integer |

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission.

| Column        | Type    |
|---------------|---------|
| submission_id | Integer |
| hacker_id     | Integer |
| challenge_id  | Integer |
| score         | Integer |

*/

SELECT H.hacker_id, H.name 
    FROM Submissions S
        JOIN Challenges C 
            ON S.challenge_id = C.challenge_id
        JOIN difficulty D
            ON C.difficulty_level = D.difficulty_level
        JOIN Hackers H
            ON S.hacker_id = H.hacker_id
    WHERE S.score = D.score
GROUP BY H.hacker_id, H.name -- Group by need to include both select.
    HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(H.hacker_id) DESC, H.hacker_id ASC;