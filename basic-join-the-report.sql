/*
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

| Column | Type    |
|--------|---------|
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |

Grades contains the following data:

| Grade | Min_Mark | Max_Mark |
|-------|----------|----------|
| 1     | 0        | 9        |
| 2     | 10       | 19       |
| 3     | 20       | 29       |
| 4     | 30       | 39       |
| 5     | 40       | 49       |
| 6     | 50       | 59       |
| 7     | 60       | 69       |
| 8     | 70       | 79       |
| 9     | 80       | 89       |
| 10    | 90       | 99       |

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Sample Input

| ID | Name     | Marks |
|----|----------|-------|
| 1  | Julia    | 88    |
| 2  | Samantha | 68    |
| 3  | Maria    | 99    |
| 4  | Scarlet  | 78    |
| 5  | Ashley   | 63    |
| 6  | Jane     | 81    |

*/

SELECT IF (G.Grade < 8, NULL, Name), G.Grade, S.Marks FROM
    Students AS S JOIN Grades AS G WHERE
        S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
        ORDER BY G.Grade DESC, S.Name;