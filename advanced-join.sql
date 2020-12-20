-- Placements (https://www.hackerrank.com/challenges/placements/)
Select S.Name
From ( Students S join Friends F Using(ID)
       join Packages P1 on S.ID=P1.ID
       join Packages P2 on F.Friend_ID=P2.ID)
Where P2.Salary > P1.Salary
Order By P2.Salary;

-- Symmetric Pairs (https://www.hackerrank.com/challenges/symmetric-pairs/)
SELECT f1.X, f1.Y FROM Functions f1 -- f1, 1st pair of x,y
    INNER JOIN Functions f2 ON f1.X=f2.Y AND f1.Y=f2.X --f2, symmetric pairs X1 = Y2 and X2 = Y1
    GROUP BY f1.X, f1.Y 
        HAVING COUNT(f1.X)>1 or f1.X<f1.Y
    ORDER BY f1.X 