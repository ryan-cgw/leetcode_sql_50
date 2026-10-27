-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50
SELECT v2.name
FROM Employee v2
INNER JOIN (
    SELECT v1.managerId
    FROM Employee v1
    GROUP BY v1.managerId
    HAVING COUNT(v1.managerId) >= 5
) sub
    ON v2.id = sub.managerId;
