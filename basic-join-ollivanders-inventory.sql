/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

==Input Format==

The following tables contain data on the wands in Ollivander's inventory:

* Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, and power denotes the quality of the wand (the higher the power, the better the wand is).

| Column       | Type    |
|--------------|---------|
| id           | Integer |
| code         | Integer |
| coins_needed | Integer |
| power        | Integer |

* Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes whether the wand is good for the dark arts. If the value of is_evil is 0, it means that the wand is not evil. The mapping between code and age is one-one, meaning that if there are two pairs, (code 1, age 1) and (code 2, age 2), then code 1 != code 2 and age 1 != age 2

| Column  | Type    |
|---------|---------|
| code    | Integer |
| age     | Integer |
| is_evil | Integer |

*/

SELECT W.id, P.age, W.coins_needed, W.power 
    FROM Wands AS W JOIN Wands_Property AS P ON W.code = P.code
        WHERE P.is_evil = 0 AND W.coins_needed = (
            SELECT min(coins_needed)
            FROM Wands AS W1 JOIN Wands_Property AS P1 ON W1.code = P1.code
                WHERE W.power = W1.power AND P.age = P1.age
        )
        -- Create a table only includes the minimum coins_need from the same wand with differenct power and age.
ORDER BY W.power DESC, P.age DESC;